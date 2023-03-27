import express from "express";

const app = express()

app.use(express.json({extended: true}));

const webhooks = []

app.post('/webhooks', (req, res) => {
  const { type, url } = req.body
  console.log(req.body)
  const id = webhooks.length
  webhooks.push({ id, type, url })
  // save to persistent storage
  sendPing(url)
  res.json({ id })
})

app.delete('/webhooks/:id', (req, res) => {
  const { id } = req.params
  const index = webhooks.findIndex(webhook => webhook.id === Number(id))
  webhooks.splice(index, 1)
  // remove from persistent storage
  res.sendStatus(204)
})

function sendPing(url) {
  // generate a random value
  const value = Math.random().toString(36).substring(7)

  // send a ping event to the integrator's endpoint
  fetch(url, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      type: 'ping',
      value: value
    })
  })
  .then(response => {
    if (response.ok) {
      return response.json()
    } else {
      throw new Error('Network response was not ok')
    }
  })
  .then(data => {
    if (data === value) {
      console.log('Ping succeeded')
    } else {
      console.error('Ping failed')
      console.log(data)
    }
  })
  .catch(error => {
    console.error('Ping failed', error)
  })
}

function sendEvent(type, data) {
  // send an event to all registered webhooks
}

app.listen(3000, () => console.log('Server started on port 3000'))

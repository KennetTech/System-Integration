from fastapi import FastAPI, Request, Response

app = FastAPI()

@app.post("/webhook")
async def webhook(request: Request, response: Response):
    data = await request.json()
    print('Received webhook data:', data)
    # do something with the data
    return {"message": "ok"}
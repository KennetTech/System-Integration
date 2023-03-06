import express from "express";

const app = express();

app.use(express.static("public"))

app.get("/synchronize-time", (req, res) => {
    res.writeHead(200, {
        "Content-Type": "text/event-stream",
        "cache-Control": "no-cache",
        "Connection": "Keep-alive"
    });

    setInterval(() => {
        sendTimeToClient(res)
    }, 1000);
});

function sendTimeToClient(res) {
    const time = new Date().toTimeString();
    res.write(`data: ${time}\n\n`);
}

const PORT = 8080;

app.listen(PORT, () => console.log("Server is running on port", PORT));


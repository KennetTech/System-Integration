import WebSocket from "ws";

const WebSocketClient = new WebSocket('ws://localhost:8080');

WebSocketClient.on('open', () => {
    console.log('connection to the server');
    WebSocketClient.send('This is the message from a client in node.js');
});
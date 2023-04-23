import { Express } from "express";
const app = express();

// import cors from 'cors';
// app.use(cors());

// enable CORS for allroutes
app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With,
    Content-Type, Accept');
});

app.get('/timestamp', (req, res) => {
    res.send(new Date());
});

app.listen(8080, () => console.log("Server os running on", 8080));
import express from "express";
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended: true }));

app.post("/", (req, res) => {
    const { value } = req.body
    res.json(value);
});

const PORT = 8080;
app.listen(PORT, () => console.log("Server is running on port", PORT));
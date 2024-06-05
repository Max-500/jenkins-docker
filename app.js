const express = require('express');
const cors = require('cors');

const app = express();

app.use(express.json());
app.use(cors());

const port = process.env.PORT || 3000;

app.get('/hello', (req, res) => {
    res.send("Hi World")
});

// Modifica la línea de respuesta para verificar el cambio
app.get('/bye', (req, res) => {
    res.send("Goodbye World");
});

app.listen(port, () => {
    console.log(`SERVER RUNNING IN http://localhost:${port}.`);
});
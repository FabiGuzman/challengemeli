const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Challenge Meli');
});

app.listen(4500, () => {
    console.log('Listening on port 4500');
});
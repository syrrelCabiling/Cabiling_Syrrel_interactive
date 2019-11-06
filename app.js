const express = require('express');
const path = require('path');
const hbs = require('hbs');

// PORT
const port = process.env.PORT || 3000;

const app = express();

// STATIC
app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})
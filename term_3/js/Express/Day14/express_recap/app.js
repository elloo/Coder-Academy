const express = require ("express");
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');

const mongoose = require("mongoose");
// Syntax:        db server: domain:  db name
mongoose.connect("mongodb://localhost/contact_app", { useNewUrlParser: true})

mongoose.Promise = global.Promise;

// If DB can't connect, log the error to the terminal
mongoose.connection.on("error", (error) => {console.log(error)});

const port = 3000;

const app = express();
// const contacts = [];

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json
app.use(bodyParser.json())
app.use(require("./routes"))

app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

app.listen(port, () => {console.log(`server started on port ${port}`)});
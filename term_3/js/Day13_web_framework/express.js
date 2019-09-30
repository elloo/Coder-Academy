const express = require("express");
const bodyParser = require('body-parser');
const exphbs = require("express-handlebars");

// create app from express

const app = express();

// middlewares for handlebars
app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

// middlewares for body parser
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json
app.use(bodyParser.json())

const students = ["Philip", "Kats", "Jo", "David"]

const port = 3000;

app.get("/", (req, res) => {
    res.render(`home`, {
        student0: students[Math.floor(Math.random()*students.length)],
        student1: students[Math.floor(Math.random()*students.length)]
    });
})

app.get("/students", (req, res) => {
    res.render(`students`, {
        test: "Hello"
    });
})

app.post("/students", (req, res) => {
    console.log(req.body.name);
    students.push(req.body.name);
    res.send("Added students");
})

app.listen(port, () => console.log(`server started on port ${port}`));
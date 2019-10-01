/*
CHALLENGE 1: Express Guestbook
​
    1.1: Core App:
​
        Ever heard of a guest book? It's a record of who & when people have visited a place - common in hotels or bed & breakfast homes.
​
        Create an app that gets data from the "IP API" and finds out where you are.
        http://ip-api.com/json/
​
        Every time you visit or refresh the page for this app, it should add your location & timestamp of your visit to an array.
        You might want to store the city & timestamp in an object, and put the object into an array!
​
​
    1.2: Benefits of Server-side Processing
        Instead of "IP API", use "IP Stack" instead:
        https://ipstack.com/
​
        Keep your API key safe & secret! 
​
        Using IP Stack's response, show these pieces of extra data on the page as well:
            - the country's flag as an image on the page
            - the timezone of the user's location
​
​
*/

const express = require("express");
const fetch = require("node-fetch");
const exphbs = require("express-handlebars")

const app = express();
const port = 3000;

let flag;
let timezone;

app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

fetch("http://ip-api.com/json/")
    .then(res => res.json())
    .then(data => {timezone = data.timezone})
    .catch(err => console.log(err))

fetch("http://api.ipstack.com/203.194.51.158?access_key=0bf3ccd91e313a296b4e752c4c6e5b73")
    .then(res => res.json())
    .then(data => {flag = data.location.country_flag})
    .catch(err => console.log(err))

app.get("/", (req, res) => {
    res.render(`home`, {
        flag: flag,
        timezone: timezone 
    });
});

app.listen(port, () => console.log(`Challenge 01 listening to port ${port}`))
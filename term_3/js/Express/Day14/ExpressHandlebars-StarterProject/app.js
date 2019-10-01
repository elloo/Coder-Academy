/*
CHALLENGE 2: Yet Another Pokemon API App
    The attachment is an Express app that has some examples of how to pass data from the server to the front-end.
    It also shows a half-finished "getRandomPokemon" function that will grab a random Pokemon for you. 
    Refer to yesterday's version of this challenge for the full function.
    Note that "fetch" works differently in Node compared to how it works in the browser! You may need to set up "node-fetch" in npm.

    This also relies on Express Handlebars a lot - read their documentation's "Getting Started" before starting the challenge:
    https://handlebarsjs.com/   
    
    And refer back to this page for some useful hints with Express Handlebars:
    https://handlebarsjs.com/builtin_helpers.html

    So, this app should grab a random Pokemon and only give the user specific pieces of information about it every time the user visits a page.
    Broken down into steps below:

    2.1 - Core App:

        Instead of throwing ALL data on to the user's browser, let's only send them specific pieces of information.
        The Pokemon API returns a pretty massive JSON object and we need to only send through these things to the user's browser:
            - the Pokemon's name
            - the Pokemon's image (any image provided from the original JSON object is fine)

        You can use res.send() to send through strings to confirm that it all works for now.



    2.2 - Handlebars for HTML Elements

        Look at the example project provided, and note how it uses data from Express Handlebars to fill out various HTML elements.
        Now, you need to put the Pokemon's name in a heading tag.
        And you need to put the Pokemon's image in an img tag.



    2.3 - Handlebars Arrays

        In the server, grab 6 random Pokemon instead of just 1.
        Store the name & image URL of each Pokemon in an object, like below:
        pokemon1 = {pokeName: "blah blah blah", pokeImg: "url goes here"};

        Then, store each of the 6 Pokemon objects in an array.

        Pass the array to your front-end.

        Using Handlebars' array helper methods (see the provided project for an example), show each Pokemon's name & image in the page.


            
    2.4 - Conditional Templating:

        Here's a trick: some Pokemon have two types, such as "Ground and Rock" instead of just "Ground".
        Pass the Pokemon's types to the page as well as the data from previous steps.

        You shouldn't have any wasted HTML elements or wasted data -- if a Pokemon has one type, there should be one element that shows it.
        If a Pokemon has two types, two HTML elements (one element per type) should be on the page.

        So you should have:
            - an element for the Pokemon's name
            - an element for the Pokemon's image
            - an element for the Pokemon's first type
            - an element for the Pokemon's second type that only appears if the second type exists
        
            Handlebars doesn't always have a sensible or intuitive way to check if a value exists - you might have to make a boolean for Handlebars to check.
            
*/

// server initialization:
const express = require('express');
const port = 3000;
const app = express();
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const fetch = require('node-fetch')

// server middleware:
app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');


// server middleware:
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
// parse application/json
app.use(bodyParser.json());


async function getRandomPoke() {
    let urlToVisit = `https://pokeapi.co/api/v2/pokemon/${Math.floor(Math.random() * 808)}`;
    let response = await fetch(urlToVisit);
    let data = await response.json()
    return data;
}

// routing: 
app.get('/', (req, res) => {
    // call or run other code here
    let pokeName;
    let pokeImg;

    getRandomPoke()
        .then(data => {
            pokeName = data.name;
            pokeImg = data.sprites.front_default;          
        })
        .catch(err => console.log(err))

    res.render('index', {
        name: pokeName,
        img: pokeImg
    })  

});


// message for when the server boots up:
app.listen(port, () => {
    console.log(`server started on localhost:${port}!`)
});
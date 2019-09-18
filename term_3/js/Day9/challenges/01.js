/*
CHALLENGE 1: Multi-Promise Handling
​
1.1 - Core App: 
Create a terminal app that pulls one joke from each of these APIs & only shows them all when everything has finished loading:
- https://sv443.net/jokeapi 
- https://github.com/15Dkatz/official_joke_api?ref=apilist.fun
- https://icanhazdadjoke.com/api
​
You should be able to use "Promise.all" to handle this cleanly & display 3 jokes all at the same time!
​
1.2 - Joke Race:
Modify the app so that it uses "Promise.race" to return the first joke that comes back from any of the APIs. Only show one joke! 
​
​
*/

const fetch = require('node-fetch');

function joke1(){
    fetch("https://sv443.net/jokeapi/category/Any")
    .then(response => response.json())
    .then(joke => {
        if (joke.setup){
            console.log("Joke 1:")
            console.log(joke.setup);
            console.log(joke.delivery);
        } else {
            console.log("Joke 1:")
            console.log(joke.joke);
        }
    })
}

function joke2(){
    fetch("https://official-joke-api.appspot.com/random_joke")
    .then(response => response.json())
    .then(joke => {
        console.log("Joke 2:")
        console.log(joke.setup);
        console.log(joke.punchline);
    })
}

function joke3(){
    fetch("https://icanhazdadjoke.com", {
        method: "GET",
        headers: {"accept": "application/json"}
    })
    .then(response => response.json())
    .then(joke => {
        console.log("Joke 3:")
        console.log(joke.joke)
    })
}

jokesList = [joke1(), joke2(), joke3()]

Promise.all(jokesList)
    .then(jokes => console.log(jokes))
    .catch(err => console.log(err));
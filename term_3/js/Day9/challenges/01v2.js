const fetch = require('node-fetch');

let urls = [
    "https://sv443.net/jokeapi/category/Any",
    "https://official-joke-api.appspot.com/random_joke",
    "https://icanhazdadjoke.com/slack",
]
  
// map every url to the promise of the fetch
let requests = urls.map(url => fetch(url));

// Promise.all waits until all jobs are resolved
Promise.all(requests)
    .then(responses => responses.forEach(
        response => response.json()
    ))
    .then(test => console.log(test))
    .catch(err => console.log(err))
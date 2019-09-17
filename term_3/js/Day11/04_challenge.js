const fetch = require("node-fetch");

const chuckJokes = async () => {
    let jokes = [];

    // Fetch returns a promise
    // Anything that returns a promise can be awaited in the async function
    let joke1 = await fetch("https://api.chucknorris.io/jokes/random")
    let joke1Data = await joke1.json();
    jokes.push(joke1Data.value);

    let joke2 = await fetch("https://api.chucknorris.io/jokes/random")
    let joke2Data = await joke2.json();
    jokes.push(joke2Data.value);

    let joke3 = await fetch("https://api.chucknorris.io/jokes/random")
    let joke3Data = await joke3.json();
    jokes.push(joke3Data.value);

    return(jokes);
}

// async function returns promise
chuckJokes()
    .then(jokes => console.log(jokes))
    .catch(err => console.log(err))
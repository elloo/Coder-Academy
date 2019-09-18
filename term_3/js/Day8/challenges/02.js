/* 
​
CHALLENGE 2: Random Pokemon Fetcher 
​
This challenge requires you to install a NodeJS package so that you can use Javascript's new "fetch" functionality in the Node terminal.
In your working directory, run this command:
​
npm i node-fetch
​
(If you're running this in the browser, it should be fine without that package installed.)
​
Take a look at the code provided below. Fetch is like AJAX - it can get data from a URL. But it's based on promises! 
So the code below already gets data from the Pokemon API. But those functions inside the ".then()" statements don't exist.
Fix that!
This code should automatically pick a random Pokemon (already covered) and then display its name with proper capitalization.
eg. "Your Pokemon is Pikachu!"
The functions have to return data so that the next function in the Then Chain can access it. 
Returned data will automatically be used in the next function. 
eg. if "getRawJSON" returns a variable called "allJSON", then "getPokemonName" should be written as "function getPokemonname(data)" to access it.
​
This seems a little bizarre, right? Can you think of why we might want to break our code into distinct steps & functions like how the Then Chain is written below?
​
*/
const fetch = require("node-fetch");
var urlToVisit = `https://pokeapi.co/api/v2/pokemon/${Math.floor(Math.random() * 808)}`;
​
fetch(urlToVisit)
  .then(getRawJSON)
  .then(getPokemonName)
  .then(capitalizeName)
  .then(function(pName) {
    console.log(`Your Pokemon is ${pName}!`);
});
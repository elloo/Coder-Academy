/*
CHALLENGE 2: Pig Latin Converter
​
What is pig latin? Pig latin takes the first letter of every word, moves it to the end of the word and adding ‘ay’. 
For example, "the quick brown fox" becomes "hetay uickqay rownbay oxfay".
​
​
Write a function that translates provided text to Pig Latin.
​
_E.g._ pig_latin("Sydney or Melbourne or Perth are possible destinations") should return "ydneySay roay elbourneMay roay erthPay reaay ossiblepay estinationsday"
​
_E.g._ pig_latin("A") should return "Aay"
​
_E.g._ pig_latin("") should return "ay"
​
​
​
*/

function pig_latin(text){
    // Convert string into array of separate words
    let textArray = text.split(" ");
    let transformed = []

    textArray.forEach(function(element){
        let firstLetter = element.slice(0, 1);
        // Concatenate rest of the word with first letter and "ay"
        transformed.push(element.slice(1).concat(firstLetter, "ay"));
    })

    console.log(transformed.join(" "));
}

pig_latin("Sydney or Melbourne or Perth are possible destinations");
pig_latin("A");
pig_latin("");
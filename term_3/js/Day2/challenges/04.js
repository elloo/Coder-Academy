/*
CHALLENGE 4 - Magic Number
There are some crazy phenomina in maths - you're about to discover one!

4.1 - Magic Number Algorithm 
Write a function that prompts the user to enter a 4 digit number, made up of at least 2 different numbers. 
Rearrange the string of digits to form the largest and smallest 4 digit numbers possible.
Take these numbers, and subtract the smaller number from the larger.

*E.g.* If the user entered 8082
8820 - 0288 = 8532
8532 - 2358 = 6174
7641 - 1467 = 6174

It hits 6174, then stops.

4.2 Magic Number Iteration Counter

Count how many iterations are required to reach the magical number 6174. What is the number 6174?
*/

magiNum = () => {
    var numArray = String(prompt("Enter a 4-digit number with at least two different figures."))
        .split("")
        .map(Number);
    
    var larger = (array) => {
        array.reduce((a, b) => {
        Math.max(a, b);
    })};

    // var index = numArray.findIndex(larger(numArray));

    return numArray;

};
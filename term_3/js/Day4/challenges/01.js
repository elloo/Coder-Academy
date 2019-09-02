/*
CHALLENGE 1: Function Fix-Ups
    Fix up the code provided below to make it work.
    Then, identify the 3 different function types being used here.
    They could be any of these: 
    - Regular function, 
    - Returning function, 
    - Anonymous function, 
    - IIFE or self-invoking function, 
    - Arrow function.
​
    
    Function 1 is a: Anonymous function
    Function 1 was fixed by: Doing nothing
    Function 2 is a: IIFE
    Function 2 was fixed by: Making the arrow fat
    Function 3 is a: Regular function
    Function 3 was fixed by: Changing "func" to "function", removed illegal character
*/
// Function 1:
var funky = function() {
    console.log('I am funky');
}
funky();
​
// Function 2:
(() => {
    console.log("Another freaky function type is here!")
})()
​
// Function 3:
console.log(myFunction(5));
​function myFunction(y) {
  return y * y;
}
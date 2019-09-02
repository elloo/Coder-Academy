// multiply(2,3);
// function multiply(num1, num2){
//     return num1 * num2;
// }

// multiply(2,3);

// function expression syntax (anon func) - ES5
// let multiply = function(num1, num2){
//     return num1 * num2;
// }


// IIFE
// let product = (function (num1, num2){
//     return num1 * num2;
// })(10, 20);

// arrow functon syntax (ES6 onwards)
let multiply = (num1) => {
    console.log(num1);
    // console.log(arguments); Arrow function does not allow arguments keyword
}

multiply(10, 20);
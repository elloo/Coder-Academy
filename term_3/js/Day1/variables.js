// Declare a variable in JS by using a keyword
// Var is global-scope
// The var keyword is only used when first declaring a variable
var name = "BOB"; // Declaration
name = "Derek" // Assignment
console.log(name);

// Const is a block-scope variable
const pi = 3.14;
console.log(pi);

// A new keyword was introduced in ES6 - "let"
// Let is a block-scope variable
let age = 50;
console.log(age);

// A block is confined to curly braces
{
    let name = "Derek"
}

console.log(name);
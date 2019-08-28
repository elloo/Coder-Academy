/* 
CHALLENGE 6 Find the Largest Number

Computers are able to compare numbers, and know which is larger and which is smaller.
Write a method that will take two numbers, and return whichever is larger. If the numbers are equal, it should return "Numbers are equal".

*E.g.* largest_number(100,50) should return 100

*E.g.* largest_number(10,10) should return "Numbers are equal"

Then, as an optional extra.... can you set this method up, so, if it is given a variable that is not a number, it returns "Make sure both inputs are numbers", as oppose to erroring out.
*/

let largest_number = (numOne, numTwo) => {
    Number.isInteger(numOne) && Number.isInteger(numTwo) ?
        numOne > numTwo ? numOne
        : numOne < numTwo ? numTwo
        : "Numbers are equal"
    : "Make sure both inputs are numbers";
}
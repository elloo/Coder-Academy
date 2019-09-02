/*
CHALLENGE 5: Array Unique Merger
Take the provided arrays (see below), merge them into a new array using a rest or spread operator.
Remove any duplicate items from the array and print the length of the array.
Use functions to keep the solution clean, dry & easy to read.
​
var randomNumbers = [2, 9, 17, 144, 98, 187, 610, 256, 110, 386, 3, 0, 21]
var fibonnaciNumbers = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
var moreRandomNumbers = [98, 1010, 138, 1, 233, 84, 17, 256, 1100, 9, 9, 18, 2]
​
​
*/
var randomNumbers = [2, 9, 17, 144, 98, 187, 610, 256, 110, 386, 3, 0, 21]
var fibonnaciNumbers = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
var moreRandomNumbers = [98, 1010, 138, 1, 233, 84, 17, 256, 1100, 9, 9, 18, 2]

var combinedNums = [...randomNumbers, ...fibonnaciNumbers, ...moreRandomNumbers]
var uniqueNums = [...new Set(combinedNums)];

console.log(uniqueNums.length);
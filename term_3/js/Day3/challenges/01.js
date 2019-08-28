 /*
# CHALLENGE 1 - Array Index Drills
We access elements inside of an array by index. Try out these drills to get a handle on it.
## 1.1 - Number Array
- Initialise an array named "arr", and it should contain the numbers 1, 2, 3, 4, 5.
- Get the number at the last index of the array and add it to the number at the second last index.
- Print the result.
*/

var arr = [1, 2, 3, 4, 5];
console.log(arr[arr.length - 1] + arr[arr.length - 2]);

/*
## 1.2 - Word Array
- Initialise an array with the words "I", "LOVE", "JAVASCRIPT".
- Assemble each word in the array into a single string using concatenation.
- Print the resulting string to show that this works (do NOT print the array!).
*/

var wordArr = ["I", "LOVE", "JAVASCRIPT"];
var string = arr[0] + arr[1] + arr[2];
console.log(string);

/*
## 1.3 - Number Array Looping Printer
- Use a loop to print each value of the numbers array.
*/

for(i = 0; i < arr.length; i++){
    console.log(arr[i]);
}

/*
## 1.4 - Reverse Number Array Looping Printer
- Use a loop to print each value of the numbers array in reverse without reversing the array.
*/ 

for(i = arr.length; i >= 0; i--){
    console.log(arr[i]);
}
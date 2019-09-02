/*
CHALLENGE 3: Loop Racer
​
Write a set of functions that use different types of loops to print numbers from 1 to a specific number (eg. 1000).
​
Your functions might look like this:
​
// START CODE EXAMPLE
function forLoopRacer (maxCountingNumber) {
    var startTime = Date.now();
​
    // your loop stuff goes here 
    for (var i = 0; i < maxCountingNumber; i++){
        console.log(i);
    }
​
    var finishTime = Date.now();
​
    var functionDuration = (finishTime - startTime) / 1000; // convert from milliseconds to seconds with "/1000"
    console.log(`The for loop function took ${functionDuration} seconds to run.`);
}
forLoopRacer(1000);
​
// END CODE EXAMPLE
​
Make sure you write functions that cover these types of loops:
    - while
    - do while
    - for in
    - for of
And yes, your functions must be able to count up to any number. They must use a parameter!
​
​
*/

function whileCounter(maxNum){
    let startTime = Date.now();
    let count = 1
    while (count <= maxNum){
        console.log(count);
        count++;
    }
    let finishTime = Date.now();
    let duration = (finishTime - startTime) / 1000;
    console.log(`Took ${duration}s`)
}

function doWhileCounter(maxNum){
    let startTime = Date.now();
    let count = 1;
    do {
        console.log(count);
        count++;
     } while (count <= maxNum);
     let finishTime = Date.now();
     let duration = (finishTime - startTime) / 1000;
     console.log(`Took ${duration}`)
}

var testObject = {a: 1, b: 2, c: 3};

function forInCounter(maxNum){
    let startTime = Date.now();
    let count = 1;
    for (property in maxNum){
            console.log(count);
            count++;
    }
    let finishTime = Date.now();
    let duration = (finishTime - startTime) / 1000;
    console.log(`Took ${duration}`)
}

testArray = [1, 2, 3];

function forOfCounter(maxNum){
    let startTime = Date.now();
    let count = 1;
    for (value of maxNum){
        console.log(count);
        count++;
    }
    let finishTime = Date.now();
    let duration = (finishTime - startTime) / 1000;
    console.log(`Took ${duration}`)
}
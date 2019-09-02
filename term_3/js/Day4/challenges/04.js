/*
CHALLENGE 4: Array Iterators
Make sure you've done Challenge 3 before doing this. 
This is a bit trickier - it has more moving parts than Challenge 3.
​
Just like in Challenge 3, we must count from 1 up to a specified number and see how long it takes.
This time, we're going to use the "forEach" function that JavaScript provides for arrays.
So you will need to:
    - create an array of a certain size
    - fill that array with numbers from 1 up to the specified number 
    - initialize a starting time before the loop runs
    - use the "forEach" function to loop through each entry of the numbers array
    - print a number from the array to console in every iteration of the loop
    - initialize a finishing time after the loop finishes
    - calculate the duration in seconds based on the difference between starting & finishing time
You may need multiple functions to keep this solution clean, dry & easy to read. 
​
So, is that ".forEach" iterator faster than any of the basic loop types? 
​
​
*/

function forEachCounter(arrSize){
    // Create array of certain size
    let arr = new Array(arrSize);

   // Fill array with 1 to specified number
    for (i = 1; i <= arrSize; i++){
        arr[i - 1] = i;
    }

    let startTime = Date.now();
    var count = 1

    arr.forEach(() => {
        console.log(count);
        count++;
    })

    let finishTime = Date.now();
    let duration = (finishTime - startTime) / 1000;

    console.log(`arr took ${duration}s to print`);
}

forEachCounter(3);
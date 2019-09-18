/*
CHALLENGE 1: Quirky Clock

    You have to create a clock that - instead of telling time - tells you if the time ends on an even number.
    ​
    1.1 - Core Functionality
    Using Date, promises & setTimeout, you need to find out what the current time is and determine if it ends in an even number.
    Then, build up some suspense! Make the user wait 3 seconds before telling them if the time is even or odd.
    Use resolve for even, reject for odd.

    1.2 - Showing Suspenseful Build-up
    See challenge 5 from yesterday -- suspense while waiting/loading still means you need to show some loading progression dots or loading bar to the user!
    So, while you're making the user wait 3 seconds before telling them if the time ends in an even or odd number, show something such as:
    "Loading..."
    "Loading...."
    "Loading....."
    "Loading......"
    "The time ends in an EVEN number!"
*/

function isTimeEven(currentTime){
    var even

    if (currentTime % 2 == 0){
        even = true;
    } else {
        even = false;
    } 

    return new Promise ((resolve, reject) => {
        if (even){
            setTimeout(() => resolve("The time is EVEN!"), 10000);
        } else {
            setTimeout(() => reject("The time is ODD!"), 10000);
        }        
    })
}

var loading = "Loading"
var animation = setInterval(() => {
    loading = loading.concat(".")
    console.log(loading)
}, 1000)

isTimeEven(Date.now())
    .then (result => {
        clearInterval(animation);
        console.log(result);
    })
    .catch(err => {
        clearInterval(animation);
        console.log(err);
    })

/*
# CHALLENGE 2 - Random Number Magician
A magician on the street is about to start their magic trick. 
First, they are requesting a number (an Integer) from people on the street. 
They will then use that number, to chose that many random, whole numbers, between 1 and 100.
## 2.1 - Core Functionality
Create a method for the magician that will generate a list [array] of random, whole numbers from a given integer.
_E.g._ random_number_generator(5) should return [23,34,1,2,13] ... not the same numbers, but should return 5 of them
## 2.2 - Guaranteed Randomness
Can you ensure these numbers will be unique?
*/

var numGenerator = () => {
    var numList = [];

    var amount = prompt("How many numbers would you like?");
    while (amount > 0){
        let genResult = Math.floor(Math.random() * Math.floor(100));
        if (numList.includes(genResult) == false){
            amount--;
            numList.push(genResult);
        }
    }

    console.log(numList);
}

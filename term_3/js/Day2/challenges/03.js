/*
CHALLENGE 3 - Goldfish Journal
As the years go by, attention spans get shorter and shorter to the point where even our journals have short-term memory!

3.1 - Journal Prompter
Write a function that prompts a user any kind of input (i.e. favourite colour, what they did yesterday, whatever you want to ask them!). 
Store the user input in an array.
Print out all entries in the array.
Loop back and prompt the user for the next journal entry.
Continue the process.


3.2 - Repeating Journal
This particular journal can only hold a maximum of 5 entries, but can loop forever!
*/

journal = () => {
    var entries = [];

    var more
    while (more !== null) {

        if (entries.length >= 5) entries.shift();    
        entries.push(String(prompt("What is your favourite colour?")));
        console.log(entries)
        
        more = prompt("Do you want to add more entries? (Click cancel if no)");
    }
}
/*
CHALLENGE 1 - Length Of A String

Occasionally, we will need to validate certain data to ensure it is meeting our set standards. A prime example of that is a password.

1.1 - Length Checker
Write a method that will take a string as input, and return the length of the string. 

_E.g._ length("hello") should return 5
_E.g._ length("bird") should return 4
_E.g._ length("two words") should return 9

1.2 - Length Minimum Requirement
Alter the method, so if a word has less than 5 characters, the method returns "Too short", otherwise it should return the count.
*/

length = (word) => {
    wordLength = word.length;
    return(wordLength < 5 ? "Too short" : wordLength);
}
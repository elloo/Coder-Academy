/*
CHALLENGE 3.1: Your Own Dictionary - JS Edition

Yes, we did this back in Ruby. You must create a Dictionary class that contains:
- an array of words
- but each word should be an object that contains the word and its definition
- functions in the Dictionary class that can add words
- functions in the Dictionary class that can remove words
- functions in the Dictionary class that can update words
- functions in the Dictionary class that can show a specific word if it exists in the array 
​
*/
class Dictionary {
    constructor(word, definition){
        this.word = word;
        this.definition = definition;
        Dictionary.words.push({word: this.word, definition: this.definition});
    }

    static getWords(){
        console.log(Dictionary.words);
    }

    static setWords(){
        Dictionary.words = [];
    }

    
}

Dictionary.setWords();
var test = new Dictionary("Test", "Test test");
Dictionary.getWords();

/*
CHALLENGE 3.2: Multilingual Dictionary

Modify your dictionary so that you must create a Dictionary as an object - instantiating from the Dictionary class.
You should be able to use code like "var englishDictionary = new Dictionary('eng')" to create a specific language dictionary.
Your Dictionary class should contain an array of all Dictionary objects.
Your Dictionary class should contain a function that can print a list of what dictionary objects exist & how many words are in each dictionary.
eg. "Dictionary.listAllDictionaries()" should show "eng - 44 words, jap - 56 words, fre - 24 words"

*/
/*
CHALLENGE 2: Fruit Classes & Objects
Object instantiation is an incredibly powerful feature. 
If you think of fruit as a class, then an item such as an apple will only have a certain number of bites to it.
​
Create an object from a class named Fruit. 
Update a global variable in the Fruit class that keeps a list of all Fruit in existence - put the newly-created fruit object in that list.
When the object is instantiated from the class, set 3 properties on it (name, colour, bites). 
Also create a function in the class that when called, takes a bite of the fruit and decrements the bites property.
If there are no bites left:
    - remove the fruit object from the global Fruits list
    - log that the Fruit has been completely eaten
If the fruit's bites value is greater than 0:
    - log that the Fruit was delicious, and has ${bites} number of bites left
​
​
*/

class Fruit{

    constructor(name, colour, bites){
        this.name = name;
        this.colour = colour;
        this.bites = bites;
        Fruit.list.push({name: this.name, colour: this.colour, bites: this.bites})
    }

    bite(bitesTaken){

        this.bites -= bitesTaken;

        var objectIndex = 0;
        loop1:
        for (var arrayObject of Fruit.list){
            for (var key in arrayObject){
                if (arrayObject[key] == this.name){
                    break loop1;
                }
            }
            objectIndex++;
        }
        Fruit.list[objectIndex].bites -= bitesTaken;

        if (Fruit.list[objectIndex].bites <= 0){
            console.log(`${this.name} has been completely eaten.`);
            Fruit.list.splice(objectIndex, 1);
        } else {
            console.log(`${this.name} was delicious, there are ${this.bites} bites left.`)
        }

    }

    static getFruitList(){
        console.log(Fruit.list);
    }

    static setFruitList(){
        Fruit.list = [];
    }
}

Fruit.setFruitList();
var apple = new Fruit("Apple", "Red", 2);
var banana = new Fruit("Banana", "Yellow", 4);
var pear = new Fruit("Pear", "Green", 4);

Fruit.getFruitList();
apple.bite(2);
banana.bite(2);
Fruit.getFruitList();
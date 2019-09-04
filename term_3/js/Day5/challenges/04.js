/*
CHALLENGE 4.1: JS Pets

Build on the class provided below. You must add more functions that let you do the following:
- increase happiness
- decrease happiness
- increase hunger
- decrease hunger
- increase thirst
- decrease thirst
- name the pet

Your JS app must prompt the user with some options:
- Name their pet
- Play with the pet (increase happiness)
- Feed the pet (decrease hunger)
- Give the pet a drink (decrease thirst)
- Let the pet sing (increase happiness, only available if hunger & thirst are at 0)

Every time the user chooses one of those options, one of these things must happen:
- If they played with the pet, hunger & thirst goes up by 1 each
- If the pet's hunger or thirst are at 0, happiness goes up by 1
- If the pet was fed or had a drink, happiness goes down by 1
- If the pet sang, happiness goes up by 10

*/

class Pet {
    constructor(name){
        this.name = name,
        this.happiness = 50,
        this.hunger = 0,
        this.thirst = 0
    }

    userAction(){
        let action = prompt("What would you like to do? (P)lay, (F)eed, (W)ater, (S)ing, or (N)ew name").toUpperCase();
        switch(action){
            case "P":
                this.play();
                break;
            case "F":
                this.feed();
                break;
            case "W":
                this.water();
                break;
            case "S":
                this.sing();
                break;
            case "R":
                this.newName();
                break;
            default:
                this.userAction();
                break;
        }
    }

    newName(){
        this.name = prompt("What would you like to name your pet?");
        console.log(`Your pet's new name is ${this.name}`);
    }

    play(){
        Pet.naturalHappiness();
        this.happiness++;
        this.hunger++;
        this.thirst++;
        console.log(`Your pet is ${this.happiness}% happy.`);
    }

    water(){
        Pet.naturalHappiness();
        this.thirst--;
        this.happiness--;
        console.log(`Your pet is ${this.thirst}% thirsty.`);
    }

    feed(){
        Pet.naturalHappiness();
        this.hunger--;
        this.happiness--;
        console.log(`Your pet is ${this.hunger}% hungry.`);
    }

    sing(){
        Pet.naturalHappiness();
        if (this.hunger <= 0 && this.thirst <= 0){
            this.happiness += 10;
            console.log(`Your pet's happiness is ${this.happiness}%.`);
        } else {
            console.log("Your pet doesn't want to sing.");
        }
    }

    static naturalHappiness(){
        console.log("testing: " + this.hunger);
        if (this.hunger <= 0 || this.thirst <= 0){
            this.happiness++;
            console.log("Testing");
        }
    }

}

var dog = new Pet("Tom");
dog.userAction();

/*
CHALLENGE 4.2: Multi-pet household

Create a Cat class and a Dog class. These should inherit from Pet.
The Pet app should prompt the user to ask if they want a dog or a cat as their pet. 

The cat's happiness goes up faster when its hunger & thirst are between 0 and 5.
The dog has a special function to Walk. Walking increases hunger & thirst by 3, and increases happiness by 3.

*/

class Cat extends Pet {
    constructor(){
        super();
        this.pet = "Dog";
    }

    petType(){
        this.pet = prompt("Would you like a (D)og or a (C)at?");
    }
}

class Dog extends Pet {

}
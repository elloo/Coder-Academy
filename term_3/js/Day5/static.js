class Dog {
    constructor(name) {
        this.name = name;
        Dog.count++;
    }

    static getDogCount() {
        return `the dog count is ${Dog.count}`;
    }
    static setDogCount () {
        Dog.count = 0;
        console.log(Dog.getDogCount());
    }
}

Dog.setDogCount();

var dog1 = new Dog("Tommy");
var dog2 = new Dog("Rex");

console.log(Dog.getDogCount());

// Setters & getters modify a prototyped variable, and that prototyped variable is accessible as a global class variable.
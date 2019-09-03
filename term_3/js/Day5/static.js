// var count = 0;
class Dog {
    static setCount () {
        Dog.count = 0;
    }
    constructor(name) {
        this.name = name;
        Dog.count++;
    }

    static dogCount() {
        return `the dog count is ${Dog.count}`;
    }
}
// initialze the count variabel for the Dog class
// Dog.count = 0;

// alternate syntax
Dog.setCount();

var dog1 = new Dog("Tommy");
var dog2 = new Dog("Rex");

console.log(Dog.dogCount());
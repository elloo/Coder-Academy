// var count = 0;
class Dog {
    constructor(name) {
        this.name = name;
        Dog.count++;
    }
    static dogCount() {
        return `the dog count is ${Dog.count}`;
    }
}
// initialze the count variable for the Dog class
Dog.count = 0;

var dog1 = new Dog("Tommy");
var dog2 = new Dog("Rex");

console.log(Dog.dogCount())
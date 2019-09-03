var dogCount = 0;
class Dog{
    constructor(name){
        this.name = name;
        this.dogCount ++;
    }

    static dogCount(){
        console.log(`The dog count is ${this.dogCount}`);
    };
}

var dog1 = new Dog("Tommy");
var dog2 = new Dog("Rex");

Dog.dogCount();
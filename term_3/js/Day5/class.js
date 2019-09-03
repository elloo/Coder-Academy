class Person {
    constructor(firstName, lastName, age){
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }
    fullName () {
        return `${this.firstName} ${this.lastName}`;
    }
}

person1 = new Person("Jo", "Dunham", 22);

console.log(person1.firstName);
console.log(person1.fullName());

Person.prototype.speak = function(){
    return `Hey, how you doin' ${this.fullName()}`
}

console.log(person1.speak());
// When you want to create an instance, use PascalCase
function Person(firstName, lastName, age){
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
}

// instance of function
person1 = new Person("Bob", "Ross", 20);
console.log(person1.name);
console.log(person1.age);

// to add custom functions to a function object, use prototype keyword
Person.prototype.fullName = function(){
    return `${this.firstName} ${this.lastName}`;
}

console.log(person1.fullName());

var person2 = new Person("Alex", "Holder", 18);
console.log(person2.fullName());

Person.prototype.height = "6ft";

person1.height = "5ft";
console.log(person1.height);
console.log(person2.height);
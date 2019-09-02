var person = {
    firstName: "Alex",
    lastName: "Holder",
    fullName: function (){
        console.log(`Hello ${this.firstName} ${this.lastName}`)
    }
}

console.log(person.firstName);
console.log(person.lastName);
person.fullName()
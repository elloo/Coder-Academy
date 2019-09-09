function person(){
    console.log("normal function");
}

// Arrow function
() => {
    console.log("arrow function");
}

// functions are objects
// passed to another function
// Can be part of array
// Can be part of an object
// Can be assigned to a variable
// Functions can be invoked

function person(function1){
    console.log("person function");
}

// function function1(){
//     console.log("another function");
// }

person(() => {
    console.log("another function");
})

let array = ["philip", "shun", "dan"];
function func1(){
    console.log("func 1");
}
function func2(){
    console.log("func 2");
}
function func3(){
    console.log("func 3");
}
let arrayOfFunctions = [func1, func2, func3];

arrayOfFunctions[0]();


// Do not use arrow functions in classes and objects
var person = [
    firstName: "Hayden",
    lastName: "Fuller",
    fullName: function(){
        console.log(`${this.firstName} ${this.lastName}`)
    }
]

person.fullName();

let name = "Ewe Lin"

let greet = function(){
    console.log("Hello");
}

greet();
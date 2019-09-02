// greet();
// function greet(){
//     console.log("Welcome");
// }

// // Hoists function statements
// function greet(){
//     console.log("Welcome");
// }
// greet();


// // function expressions or anonymous functions
// // After function, there is no name
// // Does not execute if you invoke before declaration
// let anonFunc = function(){
//     console.log("I am anonymous.");
// }

// // function call or invocation
// anonFunc();

// var age = prompt("Enter your age.")

// if (age > 18){
//     var welcome = function (){
//         console.log("Hello you are an adult, do whatevere you want");
//     }
// } else {
//         var welcome = function(){
//             console.log("Hello you are too young for this");
//         }
// }

// welcome();

// Immediately Invoked Function Expression (IIFE)
// Invoked only once, has no name
// The moment it is executed, it gets deleted
(function welcome(){
    console.log("Hello world");
 })();

// welcome();

// (() => {
//     console.log("Another way to write IIFEs.")
// })()

// Another usage of IIFE in the array.foreach method:
//     array.forEach((i) => {
//         console.log(i);
//     });
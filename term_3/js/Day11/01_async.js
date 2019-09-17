// A synchronous function can be made asynchronous by adding the "async" keyword in front of it
// Async function always returns a promise
async function greet(){
    throw "something went wrong";
}

// function greet(){
//     return new Promise(resolve, reject) => {
//         return resolve("Hello");
//     };
// }

console.log(greet());

greet (
    .then((m) => console.log(m))
    .catch((err) => console.log(err));
)
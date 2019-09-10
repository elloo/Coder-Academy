// let ourPromise = new Promise(cb)

// Resolve -> Process was successful
// Reject -> Something went wrong
let ourPromise = new Promise ((resolve, reject) => {
if (true){
    resolve("All good");
} else {
    reject("something went wrong");
}
})

// Execute a promise code
// .then if successful
// .catch if there was an error
// ourPromise
//     .then(cb)
//     .catch(cb)
ourPromise (
    .then (result) => {
        console.log(result);
    }
    .catch (err) => {
        console.log(err)
    }
)
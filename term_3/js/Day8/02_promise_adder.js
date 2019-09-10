function adder(x,y){
    let answer = x + y;
    return new Promise((resolve, reject) => {
        if (isNaN(answer)) {
            reject("please input numbers");
        }
        resolve(answer);
    });   
}

adder(4, 5) 
    .then(answer => console.log(answer))
    .catch(err =>  console.log(err));

adder(3, 2)
    .then(answer => console.log(answer))
    .catch(err =>  console.log(err));

// Any function that returns a promise gets pushed to the callback queue
// console.log("Something else is happening");
    
// adder(4, 5)
//     then(cb)
//     .catch(cb);

// adder(4, 5)
//     .then((answer) => {
//         console.log(answer);
//     })
//     .catch((err) => {
//         console.log(err);
//     });
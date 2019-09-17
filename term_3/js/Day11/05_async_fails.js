const adder = async(num1, num2) => {
    
    const addTwoNumbers = new Promise((resolve, reject) => {
        if(isNaN(num1) || isNaN(num2)){
            reject("Enter two numbers")
        } else {
            resolve(num1 + num2);
        }
    })

    // addTwoNumbers is a promise, not a function - does not accept parameters
    let answer1 = await addTwoNumbers(10, 20);
    let answer2 = await addTwoNumbers(answer1, 3);

    return answer2;
}

adder()
    .then(ans => console.log(ans))
    .catch(err => console.log(err));
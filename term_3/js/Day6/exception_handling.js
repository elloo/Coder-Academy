throw "something went wrong";
throw 1;
throw ({msg: "something went wrong"});

try {
    console.log("before throw");
    throw "something went wrong";
} catch(error){
        console.log(error);
    }

    function sumOfTwoNumbers(num1, num2) { 
        try {
            if (isNaN(10) || isNaN("number")) {
                throw "please input number only";
            } else {
                return num1 + num2
            }
        } catch (error) {
            console.log(error);
        }
    
    }
    
sumOfTwoNumbers(10, 20)

console.log("continue executing the code");

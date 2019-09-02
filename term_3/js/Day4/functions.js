function adder(x, y){
    let sum = x + y;
    return sum;
}
var total = adder(10, 20);
console.log(total);


function myArgs(x, y){
    console.log(arguments);
    console.log(x, y);
}
myArgs("bob","ross","charlie");

function myOtherArgs(x, ...otherArgs){
    console.log(x, otherArgs);
}

myOtherArgs("bob","ross", "charlie");

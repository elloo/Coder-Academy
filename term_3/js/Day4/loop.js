// loop : for, while, do while, for of, for in

let count = 3;

while (count > 0 ){
    console.log(count);
    count -- ;
}

do {
  var color = prompt("what is your fav colour");
  console.log(`your fav coulur is ${color}`);
} while(color !== "blue")

let color = "blue";
while (true) {
    // let color = "blue";
    console.log(`your fav colour is ${color}`)
}
console.log(`color outside the block is ${color}`);

console.log(name);
var name = "shun";
console.log(name);

console.log(name);
let name = "shun";
console.log(name);


for(let i= 0 ; i <= 4; i--) {
    console.log(i);
}

var names = ["Hayden", "Aidan", "Philip"];
 
for (let name of names) {
    console.log(name);
}

var gentech =  {
    count: 6,
    teacher: "Alex",
    subject: "javascript"
}

// for in

for (let key in gentech) {
    console.log(gentech[key]);
}
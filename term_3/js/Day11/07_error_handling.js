console.log("person1 : shows ticket");
console.log("person2: shows ticket");

// ES5
// async function preMovie() {
//     return "ticket"
// }
// ES6

const preMovie = async () => {
    promiseMyGirlFriendIsBringingTicks = new Promise((resolve, reject) => {
        setTimeout(() => resolve("ticket"), 1000);
        setTimeout(() =>  reject("=("), 5000);
    })

let ticket
try {
    ticket = await promiseMyGirlFriendIsBringingTicks;
} catch(e){
    ticket = e;
}

return ticket

}

preMovie()
    .then(t =>  console.log(`person3 : shows ${t}`))
    .catch(err =>  console.log(`person3 : shows ${err}`));

console.log("person4: shows ticket");
console.log("person5: shows ticket");
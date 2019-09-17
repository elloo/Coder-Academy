// console.log("person1 : shows ticket");
// console.log("person2: shows ticket");

// const promiseMyGirlFriendIsBringingTicks = () => {
//     return new Promise((resolve, reject) => {
//         setTimeout(() => resolve("ticket"), 5000);
//     })
// }


// const getPopCorn = promiseMyGirlFriendIsBringingTicks().then(t => {
//     console.log(`girl friend:  I got ${t}`);
//     console.log("me: lets go in ");
//     console.log("girl friend:  I want the pop corn")
//     return new Promise((resolve, reject) => {
//         resolve(`${t} and popcorn`)
//     })
// })

// const addButter = getPopCorn.then(items => {
//     console.log(`me: I got ${items}`);
//     console.log("girlfriend: lets go in");
//     return new Promise((resolve, reject) => {
//         resolve(`${items} with butter`)
//     })
// })

// addButter
//     .then(t =>  console.log(`person3: shows ${t}`))
//     .catch(err => console.log(err));

// console.log("person4: shows ticket");
// console.log("person 5: shows ticket");

// ES5 (Async keyword from ES8)
// async function preMovie(){
//     return "ticket"
// }

// ES6
const preMovie = async () => {
    // return "ticket";

    promiseMyGirlFriendIsBringingTicks = new Promise (resolve, reject) => {
        setTimeout(() => resolve("ticket"), 5000)
    }
    
    const getPopcorn = new Promise (resolve, reject) => {
        resolve(`popcorn`);
    }

    let ticket = await promiseMyGirlFriendIsBringingTicks;

    console.log(`gf: I got ${ticket}`);
    console.log("bf: let's go in");
    console.log("gf: I want the popcorn");

    let popcorn = await getPopcorn

    return ticket;
}

preMovie()
    .then(t => console.log(`person 3: shows ${t}`))
    .catch(err => console.log(err));

console.log("person 4: shows ticket")
console.log("person 5: shows ticket")
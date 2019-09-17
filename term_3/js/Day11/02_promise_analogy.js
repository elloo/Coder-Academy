console.log("person1 : shows ticket");
console.log("person2: shows ticket");

// function promiseMyGirlFriendIsBringingTicks() {

// }

const promiseMyGirlFriendIsBringingTicks = () => {
    return new Promise((resolve, reject) => {
        setTimeout(() => resolve("ticket"), 5000);
    })
}


const getPopCorn = promiseMyGirlFriendIsBringingTicks().then(t => {
    console.log(`girl friend:  I got ${t}`);
    console.log("husband: lets go in ");
    console.log("girl friend:  I want the pop corn")
    return new Promise((resolve, reject) => {
        resolve(`${t} and popcorn`)
    })
})

const addButter = getPopCorn.then(items => {
    console.log("husband: here's the butter")
    return new Promise((resolve, reject) => {
        resolve(`${items} with butter`)
    })
})

addButter
    .then(items =>  console.log(`person3: shows ${items}`))
    .catch(err => console.log(err));

console.log("person4: shows ticket");
console.log("person 5: shows ticket");
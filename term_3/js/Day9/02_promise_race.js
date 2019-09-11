function user1(){
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("David")
        }, 2000);
    })
}

// Create another function that returns a Promise
// User = kats, after 3s
function user2(){
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Kats")
        }, 2000);
    })
}

function user3(){
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Shun")
        }, 5000);
    })
}

var userList = [user1(), user2(), user3()]

Promise.race(userList)
    .then(userNames => console.log(userNames))
    .catch(err => console.log(err));
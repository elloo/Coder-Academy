// Get wood
// Build the boat
// Sail the sea

var gotWood = true, boatBuilt = true, seaSailed = true;

function getWood(){
    return new Promise((resolve, reject) => {
        if (gotWood){
            resolve ("Wood gotten")
        }
        reject ("Failed to gather wood")
    })
}

function buildBoat(){
    return new Promise((resolve, reject) => {
        if (boatBuilt){
            resolve("Boat has been built")
        }
        reject ("Boat failed to be built")
    })
}

function sailSea(){
    return new Promise((resolve, reject) => {
        if (seaSailed){
            resolve("Sea has been sailed")
        }
        reject ("Did not sail the seas.")
    })
}

getWood()
    .then(() => buildBoat())
    .then(() => sailSea())
    .then(() => console.log("Successfully sailed"))
    .catch(failure => console.log(failure));
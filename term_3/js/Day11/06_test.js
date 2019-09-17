const haydensFunction = async () => {
    let getCoffee = new Promise((resolve, reject) => {
        resolve("Hayden's gone to get coffee for Jo")
    })

    let drinkCoffee = new Promise((resolve, reject) => {
        resolve("finished drinking coffee");
    })

    let continueClass = new Promise((resolve, reject) => {
        resolve("continue the class")
    })

    let coffee = await getCoffee;
    let coffeeStatus = await drinkCoffee;
    let classStatus = await continueClass;

    // console.log(coffee, coffeeStatus, classStatus);
    return (coffee, coffeeStatus, classStatus);
}

haydensFunction()
    .then(msg => console.log(msg))
    .catch(err => console.log(err));

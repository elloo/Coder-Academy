class Home {
    constructor(){}

    static unlock(passPhrase){
        passPhrase == "Please" ? console.log("Please enter") : console.log("Not allowed");
    }
}

Home.unlock("Please");
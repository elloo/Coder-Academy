var person = {
    name: "Hayden",
    age: 572,
    hobbies: ["music", "coding", "dancing"],
    address: {
        street: "118 Walker",
        city: "Sydney",
        postcode: 2112
    },
    greet: function(){
        console.log(`hello ${this.name}`)
    }
}

person.name = "Alex";
person.greet();
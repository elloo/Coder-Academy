// Do not set a global variable - can be changed from anywhere.
// var count = 0;

class Dog {
    // static count =  0

    // Option 2: use setters. Needs to be called before anything else is done.
    static setCount(){
        Dog.count = 0;
    }

    //  static makes this method a class method
    static getDogCount(){
        console.log(`total number of dogs ${Dog.count}`)
    }

     constructor(name){
         this.name = name;
         Dog.count++;
     }
 }

//  option 1
//  Dog.count = 0;

Dog.setCount();

 dog1 = new Dog("Rex");
 dog2 = new Dog("Tommy");

 Dog.getDogCount();
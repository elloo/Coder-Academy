class Shape {
    constructor (height, width){
        this.height = height;
        this.width = width;
    }

    area(){
        return this.height * this.width;
    }
}

square = new Shape(10,10);
console.log(square.area());

Shape.prototype.something = "Something added to shape";
console.log(square.something);
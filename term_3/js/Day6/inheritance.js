class Shape {
    constructor(width, height){
        this.width = width;
        this.height = height;
    }

    area(){
        return this.width * this.height;
    }
}

class Square extends Shape {
    constructor(width, height){
        super(width, height);
    }

    isSquare(){
        if (this.width != this.height){
            return "Not a square"
        } else {
            return "It is a square."
        }
    }

}

var sq = new Square(10, 10);
console.log(sq.area());
console.log(sq.isSquare());

var students = [];
students.push("Sarah");

var newStudent = prompt("What is your name?");
students.push(newStudent);

for (i = 0; i <= 2; i++){
    var newStudent = prompt("What is your name?");
    students.push(newStudent);
}

for (i = 0; i < students.length; i++){
    alert(students[i]);
}

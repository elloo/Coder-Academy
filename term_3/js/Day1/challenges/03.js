var students = [];

var addStudent = "Y";
while (addStudent != "N"){
    var newStudent = new Object();
    newStudent.name = prompt("What is your name?");
    newStudent.age = Number(prompt("What is your age?"));
    students.push(newStudent);
    addStudent = prompt("Add new student? (Y/N)");
}

for (i = 0; i < students.length; i++){
    console.log("Student " + i);
    console.log("Name: " + students[i].name);
    console.log("Age: " + students[i].age);
}

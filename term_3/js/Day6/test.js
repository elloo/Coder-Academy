var data = "[{\"name\":\"K.West\",\"nickname\":\"Ye\",\"dateOfBirth\":\"1977-06-08\"},{\"name\":\"A. Graham\",\"nickname\":\"Drake\",\"dateOfBirth\":\"1986-10-24\"}]"

var obj = JSON.parse(data);
console.log(obj);
console.log(obj[0].name);

var jsonData = JSON.stringify(obj);
console.log(jsonData);
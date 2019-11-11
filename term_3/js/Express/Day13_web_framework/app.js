// http module is used to create server on node
const http = require("http");

const port = 3000;

const students = ["Philip", "Kats", "Jo", "David"];

// create a server

// show routes for 
// 1. home page, 
// 2. display student list, 
// 3. add a new student, 
// 4. route not found

const server = http.createServer((req, res) => {
    // console.log(req.method);
    // console.log(req.url);
    // res.end("Hello World");
    if ((req.method === "GET") && (req.url === "/")){
        console.log("Root path");
        res.end("Root PAGE");
    } else if ((req.method === "GET") && (req.url === "/students")){
        console.log("List students");
        res.end(JSON.stringify(students));
    } else if ((req.method === "POST") && (req.url === "/students")){
        console.log("Add a new student");
        res.end("new student added");
    } else {
        res.end(`cannot GET ${req.url}`);
    }
})

// listen on a specific port
server.listen(port, () => {console.log(`server started on port ${port}`)})
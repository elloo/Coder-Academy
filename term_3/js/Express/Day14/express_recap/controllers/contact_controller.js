// const contacts = [];
const ContactModel = require("./../database/models/contact_model")

// const newResource = (req, res) => {
//     res.render("contact");
// }

// const index = (req, res) => {
//     // send contacts data in form of json
//     res.json(contacts);
// }

// const create = (req, res) => {
//     let {name, email} = req.body;
//     let contact = {name, email};
//     contacts.push(contact);
//     res.render("success");
// }

// CHALLENGE:
// Pass through your DB data to the page with Handlebars
// Show each Name, Email & Enquiry in 
// appropriate headings, paragraph tags, and other tags 
// We DON'T want res.json any more!

function index (req, res) {
    ContactModel.find()
        .then(contacts => {
            res.render("index", {
                data: contacts
            })
        })
        .catch(error => {
            return req.status(500).send(`Error: ${error}`)
        })
}

function newResource (req, res) {
    res.render("contact");
}

function create (req, res) {
    let {name, email, enquiry} = req.body;
    let contact = {name, enquiry, email};

    ContactModel.create(contact)
        .then(contact => {
            res.render("success")
        })
        .catch(error => {
            res.status(500).send(`Error: ${error}`);
        })
}

module.exports = {newResource, index, create}
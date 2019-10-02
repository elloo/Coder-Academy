const express = require("express");

const router = express();
const ContactController = require("./controllers/contact_controller")

// root path: shows contact form
router.get("/", ContactController.newResource)

// get contacts route
router.get("/contacts", ContactController.index)

// post contacts route
router.post("/contacts", ContactController.create)

module.exports = router;
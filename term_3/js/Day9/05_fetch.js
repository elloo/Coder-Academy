const fetch = require('node-fetch');

fetch("https://randomuser.me/api")
    .then(response => response.json())
    .then(data => console.log(data.results[0].name.first))
    .catch(err => console.log(err))
// Tested in http://latentflip.com/loupe/?code=ZnVuY3Rpb24geCgpewogICAgY29uc29sZS5sb2coImhlbGxvIik7Cn0KCmZ1bmN0aW9uIHkoKXsKICAgIHgoKTsKfQoKZnVuY3Rpb24geigpewogICAgeSgpOwogICAgc2V0VGltZW91dChmdW5jdGlvbigpewogICAgICAgIGNvbnNvbGUubG9nKCJleGVjdXRlZCBhZnRlciA1IHNlY29uZHMiKQogICAgfSwgNTAwMCkKfQoKeigpOw%3D%3D!!!PGJ1dHRvbj5DbGljayBtZSE8L2J1dHRvbj4%3D

function x(){
    console.log("hello");
}

function y(){
    x();
}

function z(){
    y();
    setTimeout(function(){
        console.log("executed after 5 seconds")
    }, 5000)
}

z();
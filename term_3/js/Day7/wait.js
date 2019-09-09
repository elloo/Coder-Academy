function wait(ms){
    let currentTime = Date.now(), startTime = currentTime;

    while (currentTime - startTime < ms){
        currentTime = Date.now();
    }
}

wait(5000);
console.log("timer finished");
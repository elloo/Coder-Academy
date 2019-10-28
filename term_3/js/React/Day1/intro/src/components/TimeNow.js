import React from 'react';

function TimeNow(props){
    let currentTime = new Date(Date.now());
    let options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit', timeZone: props.zone, timeZoneName: "short" };

    let AmPm = Number(currentTime.toLocaleString("en-GB", {hour: "2-digit", timeZone: props.zone}));

    currentTime = currentTime.toLocaleString("en-GB", options);

    let msg = (24 > AmPm && AmPm > 12) ? "It's night!" : "It's day!"

    return <p>{props.zone}: {currentTime} - {msg}</p>;
  }

  export default TimeNow;
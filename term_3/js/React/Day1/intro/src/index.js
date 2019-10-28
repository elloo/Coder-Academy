import React from 'react';
import ReactDOM from 'react-dom';
import './styles/index.css';
import TimeNow from './components/TimeNow';
import * as serviceWorker from './config/serviceWorker';

function main(){
    const element = (
        <div>
            <TimeNow zone="Australia/Sydney"/>
            <TimeNow zone="Australia/Perth"/>
            <TimeNow zone="Australia/Melbourne"/>
            <TimeNow zone="America/New_York"/>
        </div>
    );
    ReactDOM.render(element, document.getElementById('root'));
}

setInterval(main, 1000);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();

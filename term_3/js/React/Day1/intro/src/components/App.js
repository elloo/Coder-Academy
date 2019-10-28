import React from 'react';
import logo from '../styles/logo.svg';
import TimeNow from './TimeNow';
import '../styles/App.css';

function App() {
  return (
    <div className="App">
      <TimeNow zone="Australia/Sydney"/>
      <TimeNow zone="Australia/Perth"/>
      <TimeNow zone="Australia/Melbourne"/>
      <TimeNow zone="America/New_York"/>
    </div>
  );
}

export default App;

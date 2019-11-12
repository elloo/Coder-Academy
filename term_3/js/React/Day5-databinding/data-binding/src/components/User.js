import React from 'react';
import '../App.css';

export default function User(props){
    return (
        <div className="App">
            {/* Display the props passed from the parent */}
            {/* Props are read-only */}
            <h1>I am {props.name}</h1>
            <input value={props.name} onChange={props.editUser}/>
            <button onClick={props.deleteUser}>Delete</button>
        </div>
    )
}
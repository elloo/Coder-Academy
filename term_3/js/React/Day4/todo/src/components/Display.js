import React from 'react';
// import Remove from './Remove';

export default function Display(props){

    const filteredItems = props.items.filter(items => items.includes(props.searchInput))
    const listItems = filteredItems.map( elements => 
        <li key={elements.toString()}>{elements}</li>
    );
    return <ul>{listItems}</ul>
}
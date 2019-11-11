import React, {Component} from 'react'

export default class Remove extends Component{
    
    constructor(props){
        super(props)
        this.state = {
            list: props.items
        }
    }

    removeItem = props.index => {
        this.setState(state => {
            const list = state.list.filter((item, otherIndex) => { index !== otherIndex});
            return {list}
        })
    }

    render(){
        return(
            <button onClick={() => {this.removeItem(index)}}>Remove</button>
        )
    }
}
import React, {Component} from 'react';
import Display from './Display';

export default class List extends Component {
    constructor(props){
        super(props);
        this.state = {
            searchInput: '',
            item: '',
            list: []
        }
    }

    addItem = () => {
        this.setState(state => {
            const list = [state.item, ...state.list];
            return {
                list,
                item: ''
            }
        })
    }

    render(){
        return(
            <div>
                <div>
                    <input onChange = {e => {this.setState({searchInput: e.target.value})}} placeholder="Search"/>
                </div>
                <div>
                    <input onChange = {e => {this.setState({item: e.target.value})}} placeholder="New item"/>
                    <button onClick={() => {this.addItem(this.state.item)}}>Add</button>
                </div>
                <div>
                    <Display items={this.state.list} searchInput={this.state.searchInput}/>
                </div>
            </div>
        )
    }
}
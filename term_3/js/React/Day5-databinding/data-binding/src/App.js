import React, {Component} from 'react';
// import logo from './logo.svg';
import './App.css';
import User from './components/User'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      users: [
        {id: 1, name: "Shun"},
        {id: 2, name: "Ewe Lin"},
        {id: 3, name: "Kats"}
      ],
      newUser: ''
    }
  }

  // Only the component that has the state defined can edit the state
  editUser = (index, event) => {
    // Update the state
    // 1. Take state users copy using rest operator
    const userCopy = [...this.state.users]
    // 2. Update a specific index of the copied array
    userCopy[index].name = event.target.value
    // 3. set state
    this.setState({
      users: userCopy
    })
  }

  deleteUser = (index, event) => {
    const userCopy = [...this.state.users];
    userCopy.splice(index, 1);
    this.setState({users: userCopy});
  }

  addUser = () => {
    const userCopy = [...this.state.users, this.state.newUser];
    this.setState({users: userCopy, newUser: ''});
  }

  changeNewUser = (event) => {
    let index = this.state.users.length;
    index++;
    this.setState({newUser: {id: index, name: event.target.value}});
  }

  render(){
    // Loop through each user and pass the user name as a prop to User component
    // While passing arguments to an event, you should either bind or use arrow function
    return (
      <div>
        <input placeholder="Add User" onChange={this.changeNewUser.bind(this)}/>
        <button onClick={this.addUser.bind(this)}>Add User</button>
        {this.state.users.map((user, index) => 
          <User 
          editUser={this.editUser.bind(this, index)} 
          deleteUser={this.deleteUser.bind(this,index)}
          key={user.id} 
          name={user.name} 
          />
        )}
      </div>
    );
  }
}

export default App;

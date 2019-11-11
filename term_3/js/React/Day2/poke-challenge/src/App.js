import React, {Component} from 'react';

const PokemonInfo = (props) => {
  return (
    <div>
      <h1>{props.pokeName}</h1>
      <img src={props.pokeImage} alt={props.pokeName}/>
      <h3>{props.pokeTypeFirst} {props.pokeTypeSecond ? `& ${props.pokeTypeSecond}` : ""} Type Pokemon</h3>
    </div>
  )
}

class PokeFetch extends Component {
  constructor(props){
    super(props);
    this.state = {
      pokeName: null,
      pokeImage: null,
      pokeTypeFirst: null,
      pokeTypeSecond: null
    };
  }

  componentDidMount(){
    async function getRandomPokemon () {
      var randomPokeData = await fetch(`https://pokeapi.co/api/v2/pokemon/${Math.floor(Math.random() * 808)}`);
      var sanitizedPokeData = await randomPokeData.json();
    }

    getRandomPokemon()
      .then (data){
        this.setState({
          pokeName: data.name,
          pokeImage: data.sprites,
          pokeTypeFirst: data.types,
          pokeTypeSecond: data.types
        })}
        .catch (err) => console.log(err);

    console.log(pokeGen);
  }

  render () {
    return (
      <PokemonInfo 
          pokeName={this.state.pokemonName}
          pokeTypeFirst={this.state.pokemonTypeFirst}
          pokeTypeSecond={this.state.pokemonTypeSecond}
          pokeImage={this.state.pokemonImageURL}
      />
    )
}
}

function App() {
  return (
    <div className="App">
      <PokemonInfo
        pokeName = "Charizard"
        pokeTypeFirst = "Fire"
        pokeTypeSecond = "Flying"
        pokeImage= "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png"
      />
      <PokeFetch />
    </div>
  );
}

export default App;

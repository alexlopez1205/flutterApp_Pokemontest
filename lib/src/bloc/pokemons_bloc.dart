
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_alex_test/src/bloc/pokemons_event.dart';
import 'package:pokedex_alex_test/src/bloc/pokemons_state.dart';
import 'package:pokedex_alex_test/src/repository/pokemon_repository.dart';

class PokemonsBloc extends Bloc<PokemonsEvent, PokemonsState> {
  PokemonRepository pokemonRepository;

  //PokemonsBloc(this.pokemonRepository) : super(pokem);

  //PokemonsBloc({required this.pokemonRepository});
  PokemonsBloc(this.pokemonRepository) : super(WithoutPokemonsState());

   @override
  PokemonsState get initialState => WithoutPokemonsState();

  //PokemonsBloc(super.initialState);
  //PokemonsBloc() : super(PokemonsState());
  /*PokemonsBloc({required this.pokemonRepository})
      : assert(pokemonRepository != null);*/

  @override
  Stream<PokemonsState> mapEventToState(
    PokemonsEvent event,
  ) async* {
    if (event is AddMorePokemons) {
      try {
        final pokemons = await this.pokemonRepository.fetchPokemons();
        yield (WithPokemonsState(pokemons: pokemons, amount: pokemons.length));
      } catch (error) {
        print(error);
      }
    }
  }
}

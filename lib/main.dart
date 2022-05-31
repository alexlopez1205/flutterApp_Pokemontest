import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_alex_test/src/app.dart';
import 'package:pokedex_alex_test/src/bloc/pokemons_bloc.dart';
import 'package:pokedex_alex_test/src/repository/pokemon_repository.dart';
import 'package:pokedex_alex_test/src/simple_bloc_delegate.dart';

void main() {
  SimpleBlocDelegate delegate = SimpleBlocDelegate();
  PokemonRepository pokeRepo = PokemonRepository();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<PokemonsBloc>(
        create: (BuildContext context) => PokemonsBloc(pokeRepo),
      )
    ],
    child: MyApp(),
  ));
}
import 'package:pokedex_alex_test/src/remote/api_provider.dart';
import 'package:pokedex_alex_test/src/remote/models/pokemons_response.dart';

class PokemonRepository {
  ApiProvider apiProvider = ApiProvider();
  List<Results> pokemons = [];
  int count = 0;

  Future<List<Results>> fetchPokemons() async {
    if (count == 1126) return this.pokemons;

    if (this.pokemons.isEmpty) {
      this.pokemons.addAll(await apiProvider.fetchPokemons());
      this.count = this.pokemons.length;
      return pokemons;
    }

    this.pokemons.addAll(await apiProvider.fetchPokemons(offset: this.count));
    this.count = this.pokemons.length;
    return pokemons;
  }
}

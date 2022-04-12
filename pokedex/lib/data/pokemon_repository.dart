import 'models/pokemon.dart';
import 'models/pokemon_list_response.dart';

abstract class PokemonRepository {
  Future<PokemonListResponse> fetchPokemons();
  Future<Pokemon> getPokemonDetail(String detailUrl);
  Future<Pokemon> addToFavourite(Pokemon pokemon);
  Future<Pokemon> removeFromFavourite(Pokemon pokemon);
  Future<List<Pokemon>> getAllFavourites();
}

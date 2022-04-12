import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../core/exceptions/server_exception.dart';
import 'local/database.dart';
import 'models/pokemon.dart';
import 'models/pokemon_list_response.dart';
import 'pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  static const String baseUrl = 'https://pokeapi.co/api/v2/';
  late Box favouritesBox;
  final Dio dio;

  PokemonRepositoryImpl({
    required this.dio,
  }) {
    favouritesBox = Hive.box(LocalStorageKey.favouritesKey);
  }
  @override
  Future<PokemonListResponse> fetchPokemons() async {
    try {
      final response = await dio.get(
        baseUrl + _Endpoints.allPokemons,
        queryParameters: {
          "limit": 30,
        },
      );
      return PokemonListResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw ServerException(400, '');
    }
  }

  @override
  Future<Pokemon> getPokemonDetail(String detailUrl) async {
    try {
      final response = await dio.get(detailUrl);
      final pok = Pokemon.fromRemoteJson(response.data);

      return pok;
    } on DioError catch (e) {
      throw ServerException(400, '');
    }
  }

  @override
  Future<List<Pokemon>> getAllFavourites() {
    return Future.value(favouritesBox.values
        .map((value) => Pokemon.fromLocalJson(value as Map<String, dynamic>))
        .toList());
  }

  @override
  Future<Pokemon> addToFavourite(Pokemon pokemon) async {
    final newPokemon = pokemon.copyWith(isFavourite: true);
    final pokemonJson = newPokemon.toJson();
    favouritesBox.put(newPokemon.id, pokemonJson);
    return newPokemon;
  }

  @override
  Future<Pokemon> removeFromFavourite(Pokemon pokemon) async {
    await favouritesBox.delete(pokemon.id);
    return pokemon.copyWith(isFavourite: false);
  }
}

class _Endpoints {
  static const allPokemons = 'pokemon/';
}

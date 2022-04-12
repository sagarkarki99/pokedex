import 'dart:convert';

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
  List<Function> favouriteListeners = [];

  PokemonRepositoryImpl({
    required this.dio,
  }) {
    favouritesBox = Hive.box(LocalStorageKey.favouritesKey);
  }
  @override
  Future<PokemonListResponse> fetchPokemons({String? url}) async {
    try {
      final response = await dio
          .get(url ?? 'https://pokeapi.co/api/v2/pokemon/?offset=0&limit=30');
      return PokemonListResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw ServerException(400, '');
    }
  }

  @override
  Future<Pokemon> getPokemonDetail(String detailUrl) async {
    try {
      final response = await dio.get(detailUrl);
      Pokemon pok = Pokemon.fromRemoteJson(response.data, detailUrl);
      final localPokemon = favouritesBox.get(detailUrl);
      if (localPokemon != null) {
        favouritesBox.delete(detailUrl);
        pok = pok.copyWith(isFavourite: true);
        favouritesBox.put(detailUrl, pok.toJson());
      }
      return pok;
    } on DioError catch (e) {
      final localPokemon = favouritesBox.get(detailUrl);
      if (localPokemon != null) {
        return Pokemon.fromLocalJson(localPokemon);
      }
      throw ServerException(400, '');
    }
  }

  @override
  Future<List<Pokemon>> getAllFavourites() {
    if (favouritesBox.isEmpty) return Future.value([]);
    return Future.value((favouritesBox.values)
        .map((json) => Pokemon(
              id: json["id"] as int,
              name: json['name'],
              height: json['height'],
              weight: json['weight'],
              svgUrl: json['svgUrl'],
              stats: (json['stats'] as List<dynamic>)
                  .map((e) => Stat(
                        e['name'] as String,
                        e['value'] as int,
                      ))
                  .toList(),
              types: json['types'] as List<String>,
              isFavourite: json['isFavourite'] as bool,
              detailUrl: json['detailUrl'],
            ))
        .toList());
  }

  @override
  Future<Pokemon> addToFavourite(Pokemon pokemon) async {
    final newPokemon = pokemon.copyWith(isFavourite: true);
    final pokemonJson = newPokemon.toJson();
    favouritesBox.put(newPokemon.detailUrl, pokemonJson.toString());
    _notifyListeners(newPokemon);
    return newPokemon;
  }

  @override
  Future<Pokemon> removeFromFavourite(Pokemon pokemon) async {
    await favouritesBox.delete(pokemon.detailUrl);
    final newPokemon = pokemon.copyWith(isFavourite: false);
    _notifyListeners(newPokemon);
    return newPokemon;
  }

  @override
  void addFavouriteListener(Function(Pokemon p1) onListen) {
    favouriteListeners.add(onListen);
  }

  void _notifyListeners(Pokemon newPokemon) {
    for (var fn in favouriteListeners) {
      fn(newPokemon);
    }
  }
}

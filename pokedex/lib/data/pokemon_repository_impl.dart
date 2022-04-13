import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import '../core/exceptions/app_exception.dart';
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
      throw AppException.fromDioError(e);
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
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<List<Pokemon>> getAllFavourites() async {
    final List<Pokemon> pokemons = [];
    for (var key in favouritesBox.keys) {
      try {
        final pokemon = await getPokemonDetail(key);
        _updateLocalPokemon(key, pokemon);
        pokemons.add(pokemon);
      } on Exception catch (_) {
        final data = favouritesBox.get(key);
        pokemons.add(Pokemon.fromLocalJson(data));
      }
    }
    return pokemons;
  }

  @override
  Future<Pokemon> addToFavourite(Pokemon pokemon) async {
    final newPokemon = pokemon.copyWith(isFavourite: true);
    final pokemonJson = newPokemon.toJson();
    favouritesBox.put(newPokemon.detailUrl, pokemonJson);
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

  void _updateLocalPokemon(key, Pokemon pokemon) {
    favouritesBox.delete(key);
    favouritesBox.put(key, pokemon.toJson());
  }
}

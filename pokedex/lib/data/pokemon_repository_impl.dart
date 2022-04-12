import 'package:dio/dio.dart';

import '../core/exceptions/server_exception.dart';
import 'models/pokemon.dart';
import 'models/pokemon_list_response.dart';
import 'pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  static const String baseUrl = 'https://pokeapi.co/api/v2/';

  final Dio dio;

  PokemonRepositoryImpl({
    required this.dio,
  });
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
      final pok = Pokemon.fromJson(response.data);
      return pok;
    } on DioError catch (e) {
      throw ServerException(400, '');
    }
  }
}

class _Endpoints {
  static const allPokemons = 'pokemon/';
}

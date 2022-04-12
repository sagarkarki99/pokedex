import 'package:json_annotation/json_annotation.dart';
part 'pokemon_list_response.g.dart';

@JsonSerializable()
class PokemonListResponse extends JsonSerializable {
  final int count;
  final String? next;
  final String? previous;
  final List<Poke> results;

  PokemonListResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}

@JsonSerializable()
class Poke {
  final String name;
  final String url;

  Poke({
    required this.name,
    required this.url,
  });

  factory Poke.fromJson(Map<String, dynamic> json) => _$PokeFromJson(json);
}

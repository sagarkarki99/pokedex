// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) =>
    PokemonListResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Poke.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListResponseToJson(
        PokemonListResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

Poke _$PokeFromJson(Map<String, dynamic> json) => Poke(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokeToJson(Poke instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

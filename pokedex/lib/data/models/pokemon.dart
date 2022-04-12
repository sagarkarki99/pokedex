import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    required int id,
    required String name,
    required int height,
    required int weight,
    required String svgUrl,
    required List<Stat> stats,
    required List<String> types,
    @Default(false) bool isFavourite,
    required String detailUrl,
  }) = _Pokemon;
  Pokemon._();

  factory Pokemon.fromRemoteJson(Map<String, dynamic> json, String detailUrl) =>
      Pokemon(
        id: json["id"] as int,
        name: json["name"] as String,
        height: json["height"] as int,
        weight: json["weight"] as int,
        svgUrl: (((json['sprites'] as Map<String, dynamic>)['other']
                as Map<String, dynamic>)['official-artwork']
            as Map<String, dynamic>)['front_default'] as String,
        types: (json["types"] as List<dynamic>)
            .map((e) => ((e as Map<String, dynamic>)['type']
                as Map<String, dynamic>)['name'] as String)
            .toList(),
        stats: (json["stats"] as List<dynamic>)
            .map((e) => Stat(
                  ((e as Map<String, dynamic>)['stat']
                      as Map<String, dynamic>)['name'] as String,
                  e['base_stat'] as int,
                ))
            .toList(),
        detailUrl: detailUrl,
      );

  factory Pokemon.fromLocalJson(dynamic json) => Pokemon(
        id: json["id"],
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
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'height': height,
        'weight': weight,
        'svgUrl': svgUrl,
        'stats': stats.map((e) => e.toJson()).toList(),
        'types': types,
        'isFavourite': isFavourite,
        'detailUrl': detailUrl,
      };

  String get idString => id.toString();
  String get bmi => (weight / (height * height)).toStringAsFixed(1);
}

class Stat {
  final String name;
  final int value;

  Stat(this.name, this.value);

  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
      };
}

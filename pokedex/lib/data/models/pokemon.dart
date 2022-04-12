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
  }) = _Pokemon;
  Pokemon._();

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
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
    );
  }

  String get idString => id.toString();
  String get bmi => (weight / (height * height)).toStringAsFixed(1);
}

class Stat {
  final String name;
  final int value;

  Stat(this.name, this.value);
}

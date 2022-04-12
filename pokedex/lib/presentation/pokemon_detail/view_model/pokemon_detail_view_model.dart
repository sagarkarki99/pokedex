import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_detail_view_model.freezed.dart';

@freezed
class PokemonDetailViewModel with _$PokemonDetailViewModel {
  factory PokemonDetailViewModel({
    required int id,
    required String name,
    required String height,
    required String weight,
    required String bmi,
    required String svgUrl,
    required int hp,
    required int attack,
    required int defense,
    required int specialDefense,
    required int specialAttack,
    required int speed,
    required String type,
  }) = _PokemonDetailViewModel;

  PokemonDetailViewModel._();
  int get avgPower => 0;
  String get idString => id.toString();
}

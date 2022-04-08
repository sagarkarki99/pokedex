import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_view_model.freezed.dart';

@freezed
class PokemonViewModel with _$PokemonViewModel {
  const factory PokemonViewModel({
    required int id,
    required String idString,
    required String name,
    required String power,
    required String svgUrl,
  }) = _PokemonViewModel;
}

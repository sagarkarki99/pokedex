part of 'pokemon_detail_cubit.dart';

@freezed
class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState.initial() = _Initial;
  const factory PokemonDetailState.loaded(PokemonDetailViewModel model) =
      _Loaded;
}

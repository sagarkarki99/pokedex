part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.loading() = Loading;
  const factory PokemonState.loaded(PokemonDetailViewModel viewModel) = Loaded;
}

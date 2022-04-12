part of 'pokemon_list_cubit.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default([]) List<Poke> pokemons,
    @Default(StateStatus.loading()) StateStatus status,
  }) = _PokemonListState;
}

@freezed
class StateStatus with _$StateStatus {
  const factory StateStatus.loading() = Loading;
  const factory StateStatus.loaded() = Loaded;
  const factory StateStatus.error(String errorMessage) = Error;
}

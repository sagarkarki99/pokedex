part of 'pokemon_list_cubit.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default([]) List<Pokemon> pokemons,
    @Default(false) bool hasReachedMax,
    @Default(StateStatus.loading()) StateStatus status,
  }) = _PokemonListState;
}

@freezed
class StateStatus with _$StateStatus {
  const factory StateStatus.loading() = Loading;
  const factory StateStatus.fetchingMore() = FetchingMore;
  const factory StateStatus.loaded() = Loaded;
  const factory StateStatus.error(String errorMessage) = Error;
}

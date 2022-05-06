import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_list_view_model.freezed.dart';

@freezed
class PokemonListViewModel with _$PokemonListViewModel {
  const factory PokemonListViewModel() = _PokemonListViewModel;
}

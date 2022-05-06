import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/presentation/pokemon_detail/view_model/pokemon_detail_view_model.dart';
import 'package:pokedex/presentation/ui/ui_extension.dart';
import './../../favourites/cubit/favourite_cubit.dart';
part 'pokemon_detail_state.dart';
part 'pokemon_detail_cubit.freezed.dart';

class PokemonDetailCubit extends Cubit<PokemonDetailState> {
  Pokemon pokemon;
  final PokemonRepository pokemonRepository;
  PokemonDetailCubit({
    required this.pokemon,
    required this.pokemonRepository,
  }) : super(const PokemonDetailState.initial());

  void setUpViewModel() {
    emit(PokemonDetailState.loaded(pokemon.toViewModel));
  }

  Future<void> toggleFavourite() async {
    pokemon = pokemon.isFavourite
        ? await pokemonRepository.removeFromFavourite(pokemon)
        : await pokemonRepository.addToFavourite(pokemon);
    emit(PokemonDetailState.loaded(pokemon.toViewModel));
  }
}

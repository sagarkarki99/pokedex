import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/exceptions/server_exception.dart';
import 'package:pokedex/data/models/pokemon_list_response.dart';
import 'package:pokedex/data/pokemon_repository.dart';

part 'pokemon_list_state.dart';
part 'pokemon_list_cubit.freezed.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  final PokemonRepository repository;
  PokemonListCubit({
    required this.repository,
  }) : super(const PokemonListState());

  Future<void> fetchPokemons() async {
    try {
      final pokemons = await repository.fetchPokemons();
      emit(state.copyWith(
          status: const StateStatus.loaded(), pokemons: pokemons.results));
      print(pokemons);
    } on ServerException catch (e) {
      emit(state.copyWith(status: StateStatus.error(e.errorMessage)));
    }
  }
}

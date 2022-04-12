import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/models/pokemon_list_response.dart';
import 'package:pokedex/data/pokemon_repository.dart';

part 'favourite_state.dart';
part 'favourite_cubit.freezed.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  final PokemonRepository repository;
  List<Pokemon> _pokemons = [];

  FavouriteCubit({required this.repository})
      : super(const FavouriteState.initial());

  Future<void> getAllFavourites() async {
    _pokemons = await repository.getAllFavourites();
    _emitDataState();
  }

  void _emitDataState() {
    if (_pokemons.isEmpty) {
      emit(const Empty());
    } else {
      emit(
        Loaded(
          _pokemons.map((e) => Poke(name: e.name, url: e.detailUrl)).toList(),
        ),
      );
    }
  }

  Future<Pokemon> addToFavourite(Pokemon pokemon) async {
    final newPokemon = await repository.addToFavourite(pokemon);
    _pokemons.add(pokemon);
    _emitDataState();
    return newPokemon;
  }

  Future<Pokemon> removeFromFavourites(Pokemon pokemon) async {
    final newPokemon = await repository.removeFromFavourite(pokemon);
    _pokemons.removeWhere((pok) => pokemon.id == pok.id);
    debugPrint('Added ${newPokemon.name} to favourite...');
    _emitDataState();
    return newPokemon;
  }
}

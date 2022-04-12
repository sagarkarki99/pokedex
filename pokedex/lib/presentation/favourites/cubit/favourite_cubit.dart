import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/pokemon.dart';
import '../../../data/pokemon_repository.dart';

part 'favourite_cubit.freezed.dart';
part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  final PokemonRepository repository;
  List<Pokemon> _pokemons = [];

  FavouriteCubit({required this.repository})
      : super(const FavouriteState.initial()) {
    repository.addFavouriteListener((newPokemon) {
      final isAvailable =
          _pokemons.any((element) => element.id == newPokemon.id);
      if (isAvailable) {
        _removeFromFavourites(newPokemon);
      } else {
        _addToFavourite(newPokemon);
      }
    });
  }

  Future<void> getAllFavourites() async {
    _pokemons = await repository.getAllFavourites();
    _emitDataState();
  }

  void _emitDataState() {
    if (_pokemons.isEmpty) {
      emit(const Empty());
    } else {
      emit(Loaded(List.of(_pokemons)));
    }
  }

  Future<Pokemon> _addToFavourite(Pokemon pokemon) async {
    _pokemons.add(pokemon);
    _emitDataState();
    return pokemon;
  }

  Future<Pokemon> _removeFromFavourites(Pokemon pokemon) async {
    _pokemons.removeWhere((pok) => pokemon.id == pok.id);
    debugPrint('Added ${pokemon.name} to favourite...');
    _emitDataState();
    return pokemon;
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/exceptions/server_exception.dart';
import 'package:pokedex/data/models/pokemon.dart';
import 'package:pokedex/data/models/pokemon_list_response.dart';
import 'package:pokedex/data/pokemon_repository.dart';

part 'pokemon_list_state.dart';
part 'pokemon_list_cubit.freezed.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  final PokemonRepository repository;
  late ScrollController _controller;
  String? next = '';

  PokemonListCubit({
    required this.repository,
  }) : super(const PokemonListState()) {
    _controller = ScrollController();
    _controller.addListener(() {
      if (isBottom && !state.hasReachedMax && state.status is! FetchingMore) {
        _fetchMorePokemons(next);
      }
    });

    repository.addFavouriteListener((newPokemon) {
      final index =
          state.pokemons.indexWhere((poke) => poke.id == newPokemon.id);
      state.pokemons.removeAt(index);
      state.pokemons.insert(index, newPokemon);
      emit(
        state.copyWith(
          pokemons: List.of(state.pokemons),
          status: const StateStatus.loaded(),
        ),
      );
    });
  }

  ScrollController get controller => _controller;

  Future<void> fetchPokemons() async {
    try {
      await _getRemotePokemons();
    } on ServerException catch (e) {
      emit(state.copyWith(status: StateStatus.error(e.errorMessage)));
    }
  }

  Future<void> _fetchMorePokemons(String? nextUrl) async {
    emit(state.copyWith(status: const StateStatus.fetchingMore()));
    try {
      await _getRemotePokemons(url: nextUrl);
    } on ServerException catch (e) {
      emit(state.copyWith(status: StateStatus.error(e.errorMessage)));
    }
  }

  Future<void> _getRemotePokemons({String? url}) async {
    final pokes = await repository.fetchPokemons(url: url);
    final pokemons = await _getPokemons(pokes.results);
    next = pokes.next;
    emit(
      state.copyWith(
        status: const StateStatus.loaded(),
        pokemons: List.of(state.pokemons)..addAll(pokemons),
        hasReachedMax: next == null,
      ),
    );
    print(pokes);
  }

  bool get isBottom {
    if (!_controller.hasClients) return false;
    final maxScroll = _controller.position.maxScrollExtent;
    final currentScroll = _controller.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  Future<List<Pokemon>> _getPokemons(List<Poke> results) async {
    final List<Pokemon> pokemons = [];
    for (var poke in results) {
      final pokemon = await repository.getPokemonDetail(poke.url);
      pokemons.add(pokemon);
    }
    return pokemons;
  }
}

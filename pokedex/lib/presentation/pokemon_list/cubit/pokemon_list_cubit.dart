import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/exceptions/server_exception.dart';
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
    final pokemons = await repository.fetchPokemons(url: url);
    next = pokemons.next;
    emit(
      state.copyWith(
        status: const StateStatus.loaded(),
        pokemons: pokemons.results,
        hasReachedMax: next == null,
      ),
    );
    print(pokemons);
  }

  bool get isBottom {
    if (!_controller.hasClients) return false;
    final maxScroll = _controller.position.maxScrollExtent;
    final currentScroll = _controller.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

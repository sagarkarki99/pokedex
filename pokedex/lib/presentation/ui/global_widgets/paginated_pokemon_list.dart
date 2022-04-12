import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './../../favourites/cubit/favourite_cubit.dart';
import '../../../data/models/pokemon_list_response.dart';
import '../../../data/pokemon_repository_impl.dart';
import '../../pokemon/cubit/pokemon_cubit.dart';
import '../ui.dart';

class PaginatedPokemonList extends StatelessWidget {
  final List<PokemonCubit> pokemonCubits;
  final ScrollController? scrollController;
  const PaginatedPokemonList({
    Key? key,
    required this.pokemonCubits,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      itemCount: pokemonCubits.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 110 / 186,
      ),
      itemBuilder: (context, index) => BlocProvider.value(
        value: pokemonCubits[index],
        child: const PokemonItem(),
      ),
    );
  }
}

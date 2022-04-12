import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './../../favourites/cubit/favourite_cubit.dart';
import '../../../data/models/pokemon_list_response.dart';
import '../../../data/pokemon_repository_impl.dart';
import '../../pokemon/cubit/pokemon_cubit.dart';
import '../ui.dart';

class PaginatedPokemonList extends StatefulWidget {
  final List<Poke> pokes;
  const PaginatedPokemonList({Key? key, required this.pokes}) : super(key: key);

  @override
  State<PaginatedPokemonList> createState() => PaginatedPokemonListState();
}

class PaginatedPokemonListState extends State<PaginatedPokemonList> {
  late List<PokemonCubit> pokemonCubits;

  @override
  void initState() {
    pokemonCubits = widget.pokes
        .map(
          (e) => PokemonCubit(
            detailUrl: e.url,
            favouriteCubit: context.read<FavouriteCubit>(),
            repository: PokemonRepositoryImpl(
              dio: Dio(),
            ),
          ),
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      itemCount: widget.pokes.length,
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

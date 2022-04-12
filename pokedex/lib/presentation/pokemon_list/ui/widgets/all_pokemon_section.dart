import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/pokemon_repository_impl.dart';
import 'package:pokedex/presentation/pokemon/cubit/pokemon_cubit.dart';
import './../../../favourites/cubit/favourite_cubit.dart';
import '../../../ui/ui.dart';
import '../../cubit/pokemon_list_cubit.dart';

class AllPokemonSection extends StatefulWidget {
  const AllPokemonSection({Key? key}) : super(key: key);

  @override
  State<AllPokemonSection> createState() => _AllPokemonSectionState();
}

class _AllPokemonSectionState extends State<AllPokemonSection> {
  List<PokemonCubit> pokemonCubits = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListCubit, PokemonListState>(
      builder: (context, state) => state.status.maybeWhen(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        orElse: () {
          if (state.pokemons.isEmpty) {
            return Container();
          }
          pokemonCubits.addAll(state.pokemons
              .map(
                (e) => PokemonCubit(
                  detailUrl: e.url,
                  favouriteCubit: context.read<FavouriteCubit>(),
                  repository: PokemonRepositoryImpl(
                    dio: Dio(),
                  ),
                ),
              )
              .toList());
          return PaginatedPokemonList(
            pokemonCubits: pokemonCubits,
            scrollController: context.read<PokemonListCubit>().controller,
          );
        },
        error: (message) => const SizedBox(),
      ),
    );
  }
}

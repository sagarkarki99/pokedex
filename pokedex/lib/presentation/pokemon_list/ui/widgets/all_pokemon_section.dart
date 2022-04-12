import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/fakeData.dart';
import 'package:pokedex/data/models/pokemon_list_response.dart';
import 'package:pokedex/data/pokemon_repository_impl.dart';
import 'package:pokedex/presentation/pokemon/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/pokemon_detail/ui/pokemon_detail_screen.dart';
import 'package:pokedex/presentation/pokemon_list/cubit/pokemon_list_cubit.dart';

import '../../../ui/ui.dart';
import '../../../view_models/pokemon_view_model.dart';

class AllPokemonSection extends StatelessWidget {
  const AllPokemonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListCubit, PokemonListState>(
      builder: (context, state) => state.status.map(
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (_) {
          if (state.pokemons.isEmpty) {
            return Container();
          }
          return _PaginatedPokemonList(pokes: state.pokemons);
        },
        error: (message) => SizedBox(),
      ),
    );
  }
}

class _PaginatedPokemonList extends StatefulWidget {
  final List<Poke> pokes;
  const _PaginatedPokemonList({Key? key, required this.pokes})
      : super(key: key);

  @override
  State<_PaginatedPokemonList> createState() => _PaginatedPokemonListState();
}

class _PaginatedPokemonListState extends State<_PaginatedPokemonList> {
  late List<PokemonCubit> pokemonCubits;

  @override
  void initState() {
    pokemonCubits = widget.pokes
        .map(
          (e) => PokemonCubit(
            detailUrl: e.url,
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

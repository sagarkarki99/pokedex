import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/ui.dart';
import '../../cubit/pokemon_list_cubit.dart';

class AllPokemonSection extends StatelessWidget {
  const AllPokemonSection({Key? key}) : super(key: key);

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
          return PaginatedPokemonList(
            pokemons: state.pokemons,
            scrollController: context.read<PokemonListCubit>().controller,
          );
        },
        error: (message) => const SizedBox(),
      ),
    );
  }
}

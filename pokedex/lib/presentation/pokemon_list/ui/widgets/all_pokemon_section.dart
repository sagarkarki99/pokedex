import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/ui.dart';
import '../../cubit/pokemon_list_cubit.dart';

class AllPokemonSection extends StatelessWidget {
  const AllPokemonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PokemonListCubit, PokemonListState>(
      listener: (context, state) => state.status.maybeWhen(
        orElse: () {},
        secondaryError: (message) => ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: AppColors.redish,
              content: Text(message),
            ),
          ),
      ),
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
            showLoading: !state.hasReachedMax,
          );
        },
        primaryError: (message) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              const SizedBox(height: 8.0),
              MaterialButton(
                onPressed: () =>
                    context.read<PokemonListCubit>().fetchPokemons(),
                child: const Text('Try Again'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

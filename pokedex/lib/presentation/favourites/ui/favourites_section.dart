import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import './../cubit/favourite_cubit.dart';

class FavouritesSection extends StatelessWidget {
  const FavouritesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, FavouriteState state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        loaded: (pokemons) => PaginatedPokemonList(pokemons: pokemons),
        empty: () => Center(
          child: Text(
            'No pokemons in favourite.',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}

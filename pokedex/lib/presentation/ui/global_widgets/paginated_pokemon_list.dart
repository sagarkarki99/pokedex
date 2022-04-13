import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pokemon_detail/ui/pokemon_detail_screen.dart';

import '../../../data/models/pokemon.dart';
import '../../view_models/pokemon_view_model.dart';
import '../ui.dart';

class PaginatedPokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;
  final ScrollController? scrollController;
  const PaginatedPokemonList({
    Key? key,
    required this.pokemons,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        itemCount: pokemons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          childAspectRatio: 110 / 186,
        ),
        itemBuilder: (context, index) {
          final pokemon = pokemons[index];
          return PokemonItem(
            onTap: (_) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PokemonDetailScreen(
                    pokemon: pokemon,
                  ),
                ),
              );
            },
            model: PokemonViewModel(
              name: pokemon.name,
              power: pokemon.types.join(','),
              idString: pokemon.idString,
              svgUrl: pokemon.svgUrl,
              id: pokemon.id,
              bgColor: pokemon.getBgColor(),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import '../../../view_models/pokemon_view_model.dart';

class AllPokemonSection extends StatelessWidget {
  const AllPokemonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: PokemonItem(
        model: PokemonViewModel(
          idString: '#001',
          id: 1,
          name: 'Squirtle',
          power: 'Grass, Poison',
          svgUrl:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/132.svg',
        ),
      ),
    );
  }
}

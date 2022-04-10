import 'package:flutter/material.dart';
import 'package:pokedex/data/fakeData.dart';

import '../../../ui/ui.dart';
import '../../../view_models/pokemon_view_model.dart';

class AllPokemonSection extends StatelessWidget {
  const AllPokemonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PokemonList(pokemons: fakeData);
  }
}

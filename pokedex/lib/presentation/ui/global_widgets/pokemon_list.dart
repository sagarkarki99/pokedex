// import 'package:flutter/material.dart';

// import '../../view_models/pokemon_view_model.dart';
// import '../ui.dart';

// class PokemonList extends StatelessWidget {
//   final List<PokemonViewModel> pokemons;
//   const PokemonList({
//     Key? key,
//     required this.pokemons,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: 26,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         crossAxisSpacing: 12.0,
//         mainAxisSpacing: 12.0,
//         childAspectRatio: 110 / 186,
//       ),
//       itemBuilder: (context, index) => PokemonItem(),
//     );
//   }
// }

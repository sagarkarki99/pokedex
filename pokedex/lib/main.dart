import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/pokemon_repository_impl.dart';
import 'package:pokedex/presentation/ui/ui.dart';

import 'presentation/pokemon_list/cubit/pokemon_list_cubit.dart';
import 'presentation/pokemon_list/ui/home_screen.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: AppTheme.primary(),
      home: BlocProvider(
        create: (context) => PokemonListCubit(
          repository: PokemonRepositoryImpl(dio: Dio()),
        )..fetchPokemons(),
        child: const HomeScreen(),
      ),
    );
  }
}

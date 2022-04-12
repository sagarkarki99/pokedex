import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/local/database.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/data/pokemon_repository_impl.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import './presentation/favourites/cubit/favourite_cubit.dart';
import 'core/di/di.dart';
import 'presentation/pokemon_list/cubit/pokemon_list_cubit.dart';
import 'presentation/pokemon_list/ui/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDatabase();
  await setupLocator();
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(
        repository: locator<PokemonRepository>(),
      )..getAllFavourites(),
      child: MaterialApp(
        title: 'Pokedex',
        theme: AppTheme.primary(),
        home: BlocProvider(
          create: (context) => PokemonListCubit(
            repository: locator<PokemonRepository>(),
          )..fetchPokemons(),
          child: const HomeScreen(),
        ),
      ),
    );
  }
}

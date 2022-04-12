import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/di/di.dart';
import 'package:pokedex/data/pokemon_repository.dart';

import '../../../data/models/pokemon.dart';
import '../../ui/ui.dart';
import '../cubit/pokemon_detail_cubit.dart';
import 'widgets/widgets.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonDetailScreen({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonDetailCubit(
        pokemon: pokemon,
        pokemonRepository: locator<PokemonRepository>(),
      )..setUpViewModel(),
      child: const _PokemonDetailBody(),
    );
  }
}

class _PokemonDetailBody extends StatelessWidget {
  const _PokemonDetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailAppBar(),
          SliverToBoxAdapter(
            child: PrimaryStats(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          SliverToBoxAdapter(child: _TitleBox('Base stats')),
          SliverToBoxAdapter(child: SizedBox(height: 1.0)),
          SliverToBoxAdapter(
            child: BaseStats(),
          ),
        ],
      ),
      floatingActionButton: FavouriteButton(),
    );
  }
}

class _TitleBox extends StatelessWidget {
  final String title;
  const _TitleBox(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.light,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import 'package:badges/badges.dart';
import './../../../favourites/cubit/favourite_cubit.dart';

class FavouritesTab extends StatelessWidget {
  const FavouritesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          'Favourites',
        ),
        SizedBox(width: 4.0),
        _FavouriteCount(),
      ],
    );
  }
}

class _FavouriteCount extends StatelessWidget {
  const _FavouriteCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        loaded: (pokemons) => Badge(
          badgeColor: AppColors.primary,
          badgeContent: Text(
            pokemons.length.toString(),
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.light,
                ),
          ),
        ),
      ),
    );
  }
}

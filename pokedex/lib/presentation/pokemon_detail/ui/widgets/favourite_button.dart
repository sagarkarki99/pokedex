import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/pokemon/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/ui/ui.dart';

class FavouriteButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const FavouriteButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        loaded: (pokemon) => InkWell(
          onTap: onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: pokemon.isFavourite
                  ? AppColors.primaryLight
                  : AppColors.primary,
              borderRadius: BorderRadius.circular(36.0),
              boxShadow: [
                pokemon.isFavourite ? _getUnMarkShadow() : _getMarkShadow(),
              ],
            ),
            child: pokemon.isFavourite
                ? _getUnMarkText(context)
                : _getMarkText(context),
          ),
        ),
      ),
    );
  }

  BoxShadow _getMarkShadow() {
    return BoxShadow(
      blurRadius: 22.0,
      offset: const Offset(0, 5),
      spreadRadius: 4.0,
      color: AppColors.dark.withOpacity(0.06),
    );
  }

  BoxShadow _getUnMarkShadow() {
    return BoxShadow(
      blurRadius: 8.0,
      offset: const Offset(0, 7),
      spreadRadius: -4.0,
      color: AppColors.dark.withOpacity(0.10),
    );
  }

  Text _getMarkText(BuildContext context) {
    return Text(
      'Mark as Favourite',
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: AppColors.light,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Text _getUnMarkText(BuildContext context) {
    return Text(
      'Removte from Favourites',
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

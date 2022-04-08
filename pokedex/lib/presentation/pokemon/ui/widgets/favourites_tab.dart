import 'package:flutter/material.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import 'package:badges/badges.dart';

class FavouritesTab extends StatelessWidget {
  const FavouritesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Favourites',
        ),
        const SizedBox(width: 4.0),
        Badge(
          badgeColor: AppColors.primary,
          badgeContent: Text(
            '34',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.light,
                ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../ui.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Pokedox',
      style: Theme.of(context).textTheme.headline4!.copyWith(
            color: AppColors.primaryDark,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/presentation/ui/ui.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primary,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PokeIcon(
                height: 75,
                width: 75,
              ),
              const SizedBox(width: 16.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pokemon'.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColors.light,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Text(
                    'Pokedex',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: AppColors.light,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

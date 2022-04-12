import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../pokemon/cubit/pokemon_cubit.dart';
import '../../../ui/ui.dart';

class PrimaryStats extends StatelessWidget {
  const PrimaryStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        loaded: (pokemon) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          color: AppColors.light,
          child: Wrap(
            spacing: 48,
            children: [
              _Stat(title: 'Height', value: pokemon.height.toString()),
              _Stat(title: 'Weight', value: pokemon.weight.toString()),
              _Stat(title: 'BMI', value: pokemon.bmi),
            ],
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String title;
  final String value;
  const _Stat({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: AppColors.darkLight),
        ),
        const SizedBox(height: 6.0),
        Text(value, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}

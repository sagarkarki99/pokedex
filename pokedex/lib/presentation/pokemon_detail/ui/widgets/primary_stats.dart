import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pokemon_detail/view_model/pokemon_detail_view_model.dart';
import 'package:pokedex/presentation/ui/ui.dart';

class PrimaryStats extends StatelessWidget {
  final PokemonDetailViewModel model;
  const PrimaryStats({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      color: AppColors.light,
      child: Wrap(
        spacing: 48,
        children: const [
          _Stat(title: 'Height', value: '69'),
          _Stat(title: 'Weight', value: '7'),
          _Stat(title: 'BMI', value: '14.7'),
        ],
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

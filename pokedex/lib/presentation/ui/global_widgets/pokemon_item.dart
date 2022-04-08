import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../view_models/pokemon_view_model.dart';
import '../ui.dart';

class PokemonItem extends StatelessWidget {
  final PokemonViewModel model;
  const PokemonItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: AppColors.light,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PokemonSvg(model.svgUrl),
          _Description(model: model),
        ],
      ),
    );
  }
}

class PokemonSvg extends StatelessWidget {
  final String url;
  const PokemonSvg(
    this.url, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryLight,
      child: SvgPicture.network(
        url,
        fit: BoxFit.contain,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final PokemonViewModel model;
  const _Description({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            model.idString,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkLight,
                ),
          ),
          const SizedBox(height: 2.0),
          Text(
            model.name,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10.0),
          Text(
            model.power,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkLight,
                ),
          ),
        ],
      ),
    );
  }
}

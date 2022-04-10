import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../view_models/pokemon_view_model.dart';
import '../ui.dart';

class PokemonItem extends StatelessWidget {
  final PokemonViewModel model;
  final Function(PokemonViewModel model)? onTap;
  const PokemonItem({
    Key? key,
    required this.model,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap == null ? null : () => onTap!(model),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.light,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PokemonSvg(model: model),
            _Description(model: model),
          ],
        ),
      ),
    );
  }
}

class PokemonSvg extends StatelessWidget {
  final PokemonViewModel model;
  const PokemonSvg({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgColor,
      child: SvgPicture.network(
        model.svgUrl,
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

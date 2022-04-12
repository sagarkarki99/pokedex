import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../pokemon_detail/ui/pokemon_detail_screen.dart';
import '../../ui/ui.dart';
import '../../view_models/pokemon_view_model.dart';
import '../cubit/pokemon_cubit.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) => state.when(
        loading: () => const ShimmerLoadingItem(),
        loaded: (pokemon) => _PokemonItemBody(
          model: PokemonViewModel(
            name: pokemon.name,
            power: pokemon.type,
            idString: pokemon.id.toString(),
            svgUrl: pokemon.svgUrl,
            id: pokemon.id,
            bgColor: pokemon.getBgColor(),
          ),
          onTap: (model) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: context.read<PokemonCubit>(),
                  child: const PokemonDetailScreen(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PokemonItemBody extends StatelessWidget {
  final PokemonViewModel model;
  final Function(PokemonViewModel model)? onTap;
  const _PokemonItemBody({
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
          color: model.bgColor,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            model.svgUrl.contains('.svg')
                ? PokemonSvg(model: model)
                : ExtendedImage.network(
                    model.svgUrl,
                    loadStateChanged: (state) {
                      if (state.extendedImageLoadState == LoadState.loading) {
                        return const ShimmerLoadingItem();
                      }
                    },
                  ),
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
    return SvgPicture.network(
      model.svgUrl,
      fit: BoxFit.contain,
      placeholderBuilder: (context) =>
          Center(child: CircularProgressIndicator()),
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
    return Container(
      width: double.infinity,
      color: AppColors.light,
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
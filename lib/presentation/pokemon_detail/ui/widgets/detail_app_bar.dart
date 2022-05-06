import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/ui.dart';
import '../../cubit/pokemon_detail_cubit.dart';
import '../../view_model/pokemon_detail_view_model.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailCubit, PokemonDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (pokemon) => SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.25,
            floating: true,
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: AppColors.primaryDark,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text(
                pokemon.idString,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              background: _BackgroundView(model: pokemon),
            ),
          ),
        );
      },
    );
  }
}

class _BackgroundView extends StatelessWidget {
  final PokemonDetailViewModel model;
  const _BackgroundView({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          color: model.getBgColor(),
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: model.id,
            child: PokemonImage(
              url: model.svgUrl,
              height: 125,
              width: 136,
            ),
          ),
        ),
        Positioned(
          left: 16.0,
          top: MediaQuery.of(context).size.height * 0.12,
          child: _TitleSection(
            title: model.name,
            skill: model.type,
          ),
        ),
      ],
    );
  }
}

class _TitleSection extends StatelessWidget {
  final String title;
  final String skill;
  const _TitleSection({
    Key? key,
    required this.title,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: AppColors.primaryDark,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          skill,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColors.primaryDark,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}

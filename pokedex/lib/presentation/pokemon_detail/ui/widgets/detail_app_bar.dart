import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/pokemon/cubit/pokemon_cubit.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (pokemon) => SliverAppBar(
            expandedHeight: 250,
            floating: true,
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: AppColors.primaryDark,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                pokemon.idString,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              background: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
                    color: pokemon.getBgColor(),
                    alignment: Alignment.bottomRight,
                    child: _PokemonImage(url: pokemon.svgUrl),
                  ),
                  Positioned(
                    left: 16.0,
                    top: MediaQuery.of(context).size.height * 0.12,
                    child: _TitleSection(
                      title: pokemon.name,
                      skill: pokemon.type,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PokemonImage extends StatelessWidget {
  final String url;
  const _PokemonImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url.contains('.svg')
        ? SvgPicture.network(
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg',
            height: 125,
            width: 136,
          )
        : ExtendedImage.network(
            url,
            height: 125,
            width: 136,
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

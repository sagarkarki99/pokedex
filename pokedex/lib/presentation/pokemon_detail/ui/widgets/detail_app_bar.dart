import 'package:flutter/material.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
          '#001',
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              color: AppColors.fireBackground,
              alignment: Alignment.bottomRight,
              child: SvgPicture.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg',
                height: 125,
                width: 136,
              ),
            ),
            Positioned(
              left: 16.0,
              top: MediaQuery.of(context).size.height * 0.12,
              child: const _TitleSection(
                  title: "Balbasaur", skill: 'Grass, Poison'),
            ),
          ],
        ),
      ),
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

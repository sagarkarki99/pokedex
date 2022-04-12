import 'package:flutter/material.dart';

import '../../ui/ui.dart';
import 'widgets/widgets.dart';

class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomScrollView(
        slivers: [
          DetailAppBar(),
          SliverToBoxAdapter(
            child: PrimaryStats(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          SliverToBoxAdapter(child: _TitleBox('Base stats')),
          SliverToBoxAdapter(child: SizedBox(height: 1.0)),
          SliverToBoxAdapter(
            child: BaseStats(),
          ),
        ],
      ),
      floatingActionButton: FavouriteButton(onPressed: () {}),
    );
  }
}

class _TitleBox extends StatelessWidget {
  final String title;
  const _TitleBox(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.light,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pokemon/ui/widgets/widgets.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              PokeIcon(),
              SizedBox(width: 8.0),
              AppTitle(),
            ],
          ),
          bottom: TabBar(
            labelStyle: Theme.of(context).textTheme.headline6,
            labelColor: AppColors.primaryDark,
            unselectedLabelColor: AppColors.darkLight,
            indicator: MaterialIndicator(
              color: AppColors.primary,
              paintingStyle: PaintingStyle.fill,
            ),
            tabs: const [
              Tab(child: AllPokemonTab()),
              Tab(child: FavouritesTab()),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: PokeIcon(),
            ),
            Center(
              child: PokeIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

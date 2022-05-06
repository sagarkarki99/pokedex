import 'package:flutter/material.dart';

import '../../../data/models/pokemon.dart';
import '../../pokemon_detail/ui/pokemon_detail_screen.dart';
import '../../view_models/pokemon_view_model.dart';
import '../ui.dart';

class PaginatedPokemonList extends StatefulWidget {
  final List<Pokemon> pokemons;
  final ScrollController? scrollController;
  final bool showLoading;
  const PaginatedPokemonList({
    Key? key,
    required this.pokemons,
    this.scrollController,
    this.showLoading = false,
  }) : super(key: key);

  @override
  State<PaginatedPokemonList> createState() => _PaginatedPokemonListState();
}

class _PaginatedPokemonListState extends State<PaginatedPokemonList>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final crossCount = _getCrossCount(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        controller: widget.scrollController,
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossCount,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              childAspectRatio: 110 / 186,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final pokemon = widget.pokemons[index];
                return PokemonItem(
                  onTap: (_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PokemonDetailScreen(
                          pokemon: pokemon,
                        ),
                      ),
                    );
                  },
                  model: PokemonViewModel(
                    name: pokemon.name,
                    power: pokemon.types.join(','),
                    idString: pokemon.idString,
                    svgUrl: pokemon.svgUrl,
                    id: pokemon.id,
                    bgColor: pokemon.getBgColor(),
                  ),
                );
              },
              childCount: widget.pokemons.length,
            ),
          ),
          if (widget.showLoading)
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Loader(),
            )),
        ],
      ),
    );
  }

  int _getCrossCount(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    print(deviceWidth);
    if (_isTablet(deviceWidth)) {
      return 5;
    } else if (isSmallDevice(deviceWidth)) {
      return 2;
    }
    return 3;
  }

  bool isSmallDevice(double deviceWidth) => deviceWidth <= 400;

  bool _isTablet(double deviceWidth) => deviceWidth >= 800;

  @override
  bool get wantKeepAlive => true;
}

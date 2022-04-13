import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/ui/ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokemonImage extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  const PokemonImage({
    Key? key,
    required this.url,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return url.contains('.svg')
        ? SvgPicture.network(
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg',
            height: height,
            width: width,
            placeholderBuilder: (_) => const ShimmerLoadingItem(
              height: 125,
              width: 136,
            ),
          )
        : ExtendedImage.network(
            url,
            height: height,
            width: width,
            loadStateChanged: (state) {
              if (state.extendedImageLoadState == LoadState.loading) {
                return ShimmerLoadingItem(
                  height: height,
                  width: width,
                );
              }
            },
          );
  }
}

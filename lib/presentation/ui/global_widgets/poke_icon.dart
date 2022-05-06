import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokeIcon extends StatelessWidget {
  final double height;
  final double width;
  const PokeIcon({
    Key? key,
    this.height = 24,
    this.width = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/pokemon-icon.svg',
      height: height,
      width: width,
    );
  }
}

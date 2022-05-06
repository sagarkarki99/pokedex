import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../ui.dart';

class ShimmerLoadingItem extends StatelessWidget {
  final double? width;
  final double? height;

  const ShimmerLoadingItem({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        width: width,
        height: height,
        color: AppColors.lightGrey,
      ),
      baseColor: AppColors.lightGrey,
      highlightColor: AppColors.neutralLightGrey,
    );
  }
}

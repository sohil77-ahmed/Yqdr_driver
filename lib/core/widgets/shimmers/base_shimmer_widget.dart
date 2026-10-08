import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:shimmer/shimmer.dart';

class BaseShimmerWidget extends StatelessWidget {
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;
  const BaseShimmerWidget({super.key, required this.child, this.baseColor, this.highlightColor});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? context.colors.white,
      highlightColor: highlightColor ?? context.colors.greyWhite,
      period: const Duration(milliseconds: 1000),
      child: child,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shoply/util/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtend = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtend;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: TSizes.gridViewSpacing, // Spacing between columns
        mainAxisSpacing: TSizes.gridViewSpacing, // Spacing between rows
        mainAxisExtent: mainAxisExtend,
      ),
      itemBuilder: itemBuilder,
    );
  }
}

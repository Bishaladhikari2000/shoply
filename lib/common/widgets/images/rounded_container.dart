import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = Colors.white,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin; // Marked as final
  final EdgeInsetsGeometry? padding; // Marked as final
  final double radius; // Added radius as a final field

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child, // Container
    );
  }
}

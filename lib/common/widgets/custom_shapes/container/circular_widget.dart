import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding != null ? EdgeInsets.all(padding!) : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius ?? (width != null ? width! / 2 : 0),
        ),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}

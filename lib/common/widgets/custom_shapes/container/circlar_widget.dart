// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = TColors.white,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),

        color: TColors.textWhite.withOpacity(0.1),
      ),
      child: Stack(),
    );
  }
}

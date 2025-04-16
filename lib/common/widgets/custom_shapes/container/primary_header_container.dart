// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_shapes/container/circular_widget.dart';
import 'package:shoply/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:shoply/util/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidgets(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            // Circles with adjusted positions and opacity
            Positioned(
              top: -50, // Adjusted to be less negative
              right: -100, // Adjusted to be less negative
              child: CircularWidget(
                backgroundColor: TColors.textWhite.withOpacity(
                  0.1,
                ), // Increased opacity
                height: 200, // Explicit size
                width: 200,
              ),
            ),
            Positioned(
              top: 100,
              right: -150,
              child: CircularWidget(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
                height: 250,
                width: 250,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

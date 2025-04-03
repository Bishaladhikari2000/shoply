// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_shapes/container/circlar_widget.dart';
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
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularWidget(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 150,
                right: -300,
                child: CircularWidget(
                  backgroundColor: TColors.textWhite.withOpacity(0.2),
                ),
              ),
              Positioned(
                top: 50,
                right: 200,
                child: CircularWidget(
                  backgroundColor: TColors.textWhite.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CurvedEdgeWidgets extends StatelessWidget {
  const CurvedEdgeWidgets({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomCurvedEdges(), child: child);
  }
}

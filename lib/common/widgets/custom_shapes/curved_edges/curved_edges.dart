import 'package:flutter/material.dart';

// Custom clipper class to create a path with curved edges
class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start the path at the bottom-left corner
    path.lineTo(0, size.height);

    // Define control points for the first curve
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    // Create the first quadratic bezier curve
    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      lastCurve.dx,
      lastCurve.dy,
    );

    // Define control points for the second curve
    final secondfirstCurve = Offset(0, size.height - 20);
    final secondlastCurve = Offset(size.width - 30, size.height - 20);
    // Create the second quadratic bezier curve
    path.quadraticBezierTo(
      secondfirstCurve.dx,
      secondfirstCurve.dy,
      secondlastCurve.dx,
      secondlastCurve.dy,
    );

    // Define control points for the third curve
    final thirdfirstCurve = Offset(size.width, size.height - 20);
    final thirdlastCurve = Offset(size.width, size.height);
    // Create the third quadratic bezier curve
    path.quadraticBezierTo(
      thirdfirstCurve.dx,
      thirdfirstCurve.dy,
      thirdlastCurve.dx,
      thirdlastCurve.dy,
    );

    // Complete the path by drawing a line to the top-right corner
    path.lineTo(size.width, 0);
    path.close(); // Close the path to form a complete shape

    return path; // Return the created path
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; // Always reclip when the widget rebuilds
  }
}

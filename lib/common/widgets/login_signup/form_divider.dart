import 'package:flutter/material.dart';

class SDivider extends StatelessWidget {
  final String dividerText;

  const SDivider({super.key, required this.dividerText});

  @override
  Widget build(BuildContext context) {
    // Determine if the app is in dark mode
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left Divider
        Flexible(
          child: Divider(
            color: isDark ? Colors.grey[600] : Colors.grey[300],
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),

        // Divider Text
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),

        // Right Divider
        Flexible(
          child: Divider(
            color: isDark ? Colors.grey[600] : Colors.grey[300],
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

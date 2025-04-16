import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';

import 'package:shoply/util/helpers/helper_functions.dart';

class ShoplySectionHeading extends StatelessWidget {
  const ShoplySectionHeading({
    super.key,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
    this.textColor, // Make it optional since we'll determine it from theme
    this.padding = EdgeInsets.zero,
    this.style,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title;
  final String buttonTitle;
  final TextStyle? style;
  final void Function()? onPressed;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    // Determine the text color based on theme if not explicitly provided
    final effectiveTextColor =
        textColor ??
        Theme.of(context).textTheme.titleSmall?.color ??
        (HelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary);

    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: (style ?? Theme.of(context).textTheme.headlineSmall)
                ?.copyWith(color: style?.color ?? effectiveTextColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(foregroundColor: effectiveTextColor),
              child: Text(buttonTitle),
            ),
        ],
      ),
    );
  }
}

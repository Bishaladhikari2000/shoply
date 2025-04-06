import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

class ShoplySectionHeading extends StatelessWidget {
  const ShoplySectionHeading({
    super.key,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
    this.textColor = TColors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
    TextStyle? style, // Add this parameter
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final EdgeInsets padding; // Add this

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding, // Use the padding parameter here
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(foregroundColor: textColor),
              child: Text(buttonTitle),
            ),
        ],
      ),
    );
  }
}

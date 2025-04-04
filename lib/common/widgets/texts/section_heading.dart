import 'package:flutter/material.dart';

class ShoplySectionHeading extends StatelessWidget {
  const ShoplySectionHeading({
    super.key,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
    this.textColor,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: textColor, // This applies the custom color
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed ?? () {},
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: textColor,
              ), // Optional: apply to button too
            ),
          ),
      ],
    );
  }
}

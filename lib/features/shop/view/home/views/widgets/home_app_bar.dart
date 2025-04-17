import 'package:flutter/material.dart';
// Custom app bar widget
import 'package:shoply/common/widgets/appbar/appbar.dart';
// Cart icon with counter badge
import 'package:shoply/common/widgets/products/cart/cart_counter_icon.dart';
// Color constants
import 'package:shoply/util/constants/colors.dart';
// Text constants
import 'package:shoply/util/constants/text_strings.dart';

/// Custom home screen app bar with greeting text and cart icon
class ShoplyHomeAppBar extends StatelessWidget {
  const ShoplyHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ShoplyAppBar(
      // App bar title section with two text lines
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Left-align text
        children: [
          // Greeting text (e.g., "Good day")
          Text(
            TTexts.homeAppbarTitle, // Using constant for text
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: TColors.grey,
            ), // Grey subtext
          ),
          // User name/primary title
          Text(
            TTexts.homeAppbarSubTitle, // Using constant for text
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: TColors.white,
            ), // White main text
          ),
        ],
      ),
      // Action items (right side of app bar)
      actions: [
        // Cart icon with counter badge
        CartCounterIcon(
          iconColor: TColors.white, // White icon color
        ),
      ],
    );
  }
}

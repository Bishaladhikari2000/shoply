import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

class ShoplyAnimationLoader extends StatelessWidget {
  const ShoplyAnimationLoader({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;

  final String animation;

  final bool showAction;

  final String? actionText;

  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width * 0.8,
          ), // Display Lottie animation
          const SizedBox(height: TSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ), // Text
          const SizedBox(height: TSizes.defaultSpace),
          showAction
              ? SizedBox(
                width: 256,
                child: OutlinedButton(
                  onPressed: onActionPressed,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: TColors.dark,
                  ),
                  child: Text(
                    actionText!,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.apply(color: TColors.light),
                  ), // Text
                ), // OutlinedButton
              ) // SizedBox
              : const SizedBox(),
        ],
      ), // Column
    ); // Center
  }
}

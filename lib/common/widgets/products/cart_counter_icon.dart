import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/util/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Iconsax.shopping_cart4, color: iconColor),
          onPressed: () {},
        ),
        Positioned(
          right: 0,

          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: TColors.white,
                  fontSize:
                      Theme.of(context).textTheme.labelLarge!.fontSize! *
                      0.8, // Scale the font size
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/icons/circular_icon.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProductQuantityWithAddAndRemoveButoon extends StatelessWidget {
  const ProductQuantityWithAddAndRemoveButoon({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // add remove buttons
        Row(
          children: [
            CircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              color: isDark ? TColors.white : TColors.primary,
              backgroundColor: isDark ? TColors.darkGrey : TColors.light,
              size: TSizes.md,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: TSizes.spaceBtwItems),
            CircularIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              color: TColors.white,
              backgroundColor: TColors.primary,
              size: TSizes.md,
            ),
          ],
        ),
      ],
    );
  }
}

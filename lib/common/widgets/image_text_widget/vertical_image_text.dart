import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ShoplyVerticaIImageText extends StatelessWidget {
  const ShoplyVerticaIImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    // Determine colors based on dark mode
    final effectiveBgColor =
        backgroundColor ?? (dark ? TColors.dark : TColors.light);
    final effectiveIconColor = dark ? TColors.light : TColors.dark;
    final effectiveTextColor =
        textColor ?? (dark ? TColors.light : TColors.light);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: effectiveBgColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: effectiveIconColor,
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 56,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: effectiveTextColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

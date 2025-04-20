import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/images/circular_image.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/enums.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.showborder, this.onTap});

  final bool showborder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showborder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // --- Brand Logo ---
            Flexible(
              // Allows logo to shrink if needed.
              child: CircularImage(
                isNetworkImage: false,
                image: ShoplyImages.clothIcon,
                backgroundColor: Colors.transparent,
                overLayColor: isDark ? TColors.white : TColors.black,
              ),
            ),

            SizedBox(height: TSizes.spaceBtwItems / 2),

            // --- Brand Name & Product Count ---
            Expanded(
              // Takes remaining horizontal space.
              child: Column(
                mainAxisSize: MainAxisSize.min, // Minimize vertical space.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTextWithVerifiedIcon(
                    title: "Nike",
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '526 Products 526 Products 526 Products',
                    overflow: TextOverflow.ellipsis, // Truncate if too long.
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

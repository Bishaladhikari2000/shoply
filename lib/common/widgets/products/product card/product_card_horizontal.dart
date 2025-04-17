import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/icons/circular_icon.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';
import 'package:shoply/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:shoply/common/widgets/texts/product_title_text.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDark ? TColors.darkerGrey : TColors.lightContainer,
      ),
      child: Row(
        children: [
          /// - THUMBNAIL ---
          RoundedContainer(
            height: 100,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // -- THUMBNAIL IMAGE ----
                SizedBox(
                  width: 100,
                  height: 100,
                  child: RoundedImage(
                    imageUrl: ShoplyImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                // -- sale tag ---
                Positioned(
                  top: 5,
                  child: RoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(
                      0.7,
                    ), // More neutral dark
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      "25%",
                      style: Theme.of(context).textTheme.labelLarge?.apply(
                        color: Colors.black, // White text for better contrast
                      ),
                    ),
                  ),
                ),

                // favourite icon button
                Positioned(
                  width: 40, // Width of circular background
                  height: 40,
                  top: 0,
                  right: 0,
                  child: CircularIcon(
                    width: 20,
                    height: 20,
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          // -- DETAILS ---
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: "Nike Air Max 90 with Wings",
                        maxLines: 2,
                        smallSize: true,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 2),
                      BrandTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween, // ← This pushes them apart
                    children: [
                      Text(
                        "\$80.0",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: TColors.dark,
                            shape: BoxShape.circle,
                          ),

                          child: Icon(
                            Iconsax.add,
                            color: TColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

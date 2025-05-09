import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/styles/shadows.dart';
import 'package:shoply/common/widgets/icons/circular_icon.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';
import 'package:shoply/common/widgets/products/product_price_text.dart';
import 'package:shoply/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:shoply/common/widgets/texts/product_title_text.dart';
import 'package:shoply/features/shop/view/product_details/product_details.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/enums.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: isDark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // THUMBNAIL WISHLIST BUTTON , DISCOUNT TAG
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: isDark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // THUMBNAIL
                  RoundedImage(
                    imageUrl: ShoplyImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // SALE TAGS
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
                    top: -5,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // DETAILS
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'NIKE SHOES BEST SELLER',
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  // brand tag
                  BrandTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.medium,
                  ),
                ],
              ),
            ),
            // Creates a flexible space to insert into a Flexible widget.
            // Spacer(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // PRICE
                Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: ProductPriceText(price: '200'),
                ),
                // ADD TO CART
                Container(
                  decoration: BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,

                    child: Center(
                      child: Icon(Iconsax.add, color: TColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

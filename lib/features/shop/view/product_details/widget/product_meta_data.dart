import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/images/circular_image.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/products/product_price_text.dart';
import 'package:shoply/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:shoply/common/widgets/texts/product_title_text.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/enums.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --- PRICE & Sales Price ---
        Row(
          children: [
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: Colors.amber.withOpacity(0.7),
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
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),
            // Price
            Text(
              "\$25.00",
              style: Theme.of(context).textTheme.titleSmall?.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),
            const ProductPriceText(price: '20', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        // -- TITILE --
        ProductTitleText(title: 'NIKE Air Max 270'),

        // -- STOCK STATUS ---
        Row(
          children: [
            ProductTitleText(title: 'Status: '),

            Text(
              'In Stock',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: TColors.success),
            ),
          ],
        ),

        // --- BRAND ---
        Row(
          children: [
            CircularImage(
              image: ShoplyImages.shoeIcon,
              height: 32,
              width: 32,
              overLayColor: isDark ? TColors.white : TColors.primary,
            ),
            BrandTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}

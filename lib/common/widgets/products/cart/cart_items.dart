import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';
import 'package:shoply/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:shoply/common/widgets/texts/product_title_text.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --- Product IMAGE ---
        RoundedImage(
          imageUrl: ShoplyImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        // TITLE, PRICE AND SIZE
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTextWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: ProductTitleText(
                  title:
                      'Black Sports Shoes Black Sports Shoes Black Sports Shoes',
                  maxLines: 2,
                  smallSize: true,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              // --- ATTRIBUTES ---
              Flexible(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Color: ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: 'Green ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: 'Size: ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: 'UK 08',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

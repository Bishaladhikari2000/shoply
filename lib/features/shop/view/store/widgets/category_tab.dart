import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/brand/brand_showcase.dart';
import 'package:shoply/common/widgets/layouts/grid_layouts.dart';
import 'package:shoply/common/widgets/products/product%20card/product_card_vertical.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // --- Brand  ---
              BrandShowcase(
                images: [
                  ShoplyImages.productImage1,
                  ShoplyImages.productImage2,
                  ShoplyImages.productImage3,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // --- Product  ---
              ShoplySectionHeading(
                title: "You Might ALso Like",
                style: Theme.of(context).textTheme.headlineMedium,
                showActionButton: true, // "View All" button.
                padding: EdgeInsets.zero,
                textColor:
                    Theme.of(context).textTheme.titleLarge?.color ??
                    (HelperFunctions.isDarkMode(context)
                        ? TColors.white
                        : TColors.primary),
                onPressed: () {}, // TODO: Navigate to all brands.
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

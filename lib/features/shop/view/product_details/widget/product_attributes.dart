import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/ChoiceChips/custom_choice_chips.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/products/product_price_text.dart';
import 'package:shoply/common/widgets/texts/product_title_text.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // ---- Selected Price and description -----
        RoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children:
            // --- TITLE, PRICE AND STOCK STATUS
            [
              Row(
                children: [
                  ShoplySectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price:  ',
                            smallSize: true,
                          ),

                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          // Sale Price
                          ProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        // -- STOCK ---
                        children: [
                          const ProductTitleText(
                            title: 'Stock:  ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const ProductTitleText(
                title: 'This is the description which can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        // -- attributes ---
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShoplySectionHeading(title: 'Color', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChips(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShoplySectionHeading(title: 'Size', showActionButton: false),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChips(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChips(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

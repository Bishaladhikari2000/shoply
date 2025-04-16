import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/features/shop/view/product_details/widget/bottom_add_to_cart.dart';
import 'package:shoply/features/shop/view/product_details/widget/product_attributes.dart';
import 'package:shoply/features/shop/view/product_details/widget/product_image_slider.dart';
import 'package:shoply/features/shop/view/product_details/widget/product_meta_data.dart';
import 'package:shoply/features/shop/view/product_details/widget/rating_share.dart';
import 'package:shoply/features/shop/view/product_reviews/views/product_reviews.dart';
import 'package:shoply/util/constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1- Product Image - slider
            ProductImageSlider(),

            // Product details
            Padding(
              padding: EdgeInsets.only(
                top: 0,
                bottom: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share
                  RatingandShare(),
                  // Price, Title, Stack & Brand
                  ProductMetaData(),
                  // Attributes
                  ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Check out'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  // Description
                  ShoplySectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShoplySectionHeading(
                        title: 'Reviews (244)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(() => const ProductReviews()),
                        icon: Icon(Iconsax.arrow_right_3, size: 25),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

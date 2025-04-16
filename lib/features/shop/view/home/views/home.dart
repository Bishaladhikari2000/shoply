// ignore_for_file: deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// Custom widgets
import 'package:shoply/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shoply/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shoply/common/widgets/layouts/grid_layouts.dart';
import 'package:shoply/common/widgets/products/product_card_vertical.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';

// Home screen specific widgets
import 'package:shoply/features/shop/view/home/views/widgets/home_app_bar.dart';
import 'package:shoply/features/shop/view/home/views/widgets/home_categories.dart';
import 'package:shoply/features/shop/view/home/views/widgets/promo_slider.dart';

// Constants
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';

/// Home screen displaying featured categories, promotional banners, and popular products.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HEADER SECTION (Blue Gradient Background) ---
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar with user profile and cart icon
                  const ShoplyHomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Search bar
                  const ShoplySearchContainer(
                    text: 'Find your perfect product',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Popular Categories heading
                  ShoplySectionHeading(
                    title: 'Popular Categories',
                    textColor: TColors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 22,
                    ),
                    onPressed: () {}, // TODO: Navigate to all categories
                    showActionButton: false, // Hide "View All" button
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Horizontal scrolling categories list
                  const HomeCategories(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // --- MAIN CONTENT SECTION (White Background) ---
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promotional banner carousel
                  PromoSlider(
                    banners: [
                      ShoplyImages.promoBanner1,
                      ShoplyImages.promoBanner2,
                      ShoplyImages.promoBanner3,
                      ShoplyImages.promoBanner4,
                      ShoplyImages.promoBanner5,
                      ShoplyImages.promoBanner6,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Popular Products section
                  ShoplySectionHeading(
                    title: 'Popular Products',
                    onPressed: () {}, // TODO: Navigate to all products
                    showActionButton: true, // Show "View All" button
                  ),

                  // Product grid (2 columns by default)
                  GridLayout(
                    itemCount: 8, // Number of product cards
                    itemBuilder: (_, index) => const ProductCardVertical(),
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

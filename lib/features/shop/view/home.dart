// ignore_for_file: deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:shoply/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shoply/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shoply/common/widgets/layouts/grid_layouts.dart';

import 'package:shoply/common/widgets/products/product_card_vertical.dart';

import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/features/shop/view/widgets/home_app_bar.dart';
import 'package:shoply/features/shop/view/widgets/home_categories.dart';
import 'package:shoply/features/shop/view/widgets/promo_slider.dart';

import 'package:shoply/util/constants/image_strings.dart';

import 'package:shoply/util/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const ShoplyHomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const ShoplySearchContainer(
                    text: 'Find your perfect product',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // HEADING WITH PROPER PADDING
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: ShoplySectionHeading(
                      showActionButton: false,
                      title: 'Popular Categories',
                      textColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // CATEGORIES LIST (EDGE-TO-EDGE)
                  const HomeCategories(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// BODY
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
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

                  // popular products
                  GridLayout(
                    itemCount: 8,
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

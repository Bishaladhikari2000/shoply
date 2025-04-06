import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shoply/common/widgets/images/circular_image.dart';
import 'package:shoply/common/widgets/images/rounded_container.dart';
import 'package:shoply/common/widgets/layouts/grid_layouts.dart';
import 'package:shoply/common/widgets/products/cart_counter_icon.dart';
import 'package:shoply/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/enums.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

/// A screen displaying the store layout with featured brands and search functionality.
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(
      context,
    ); // Check if dark mode is enabled.

    return Scaffold(
      // --- AppBar ---
      appBar: ShoplyAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          // Shopping cart icon with counter
          CartCounterIcon(
            onPressed: () {}, // TODO: Add navigation to cart screen.
            iconColor: dark ? TColors.white : TColors.primary,
          ),
        ],
      ),

      // --- Body: NestedScrollView for collapsible header ---
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false, // Hide back button.
              pinned: true, // Keep header visible when scrolling.
              floating: true, // Allow quick reveal on scroll up.
              backgroundColor: dark ? TColors.black : TColors.white,
              expandedHeight: 440, // Height when fully expanded.
              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Disable inner scrolling.
                  children: [
                    SizedBox(height: TSizes.spaceBtwItems),

                    // --- Search Bar ---
                    ShoplySearchContainer(
                      text: "Search in Store",
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),

                    SizedBox(height: TSizes.spaceBtwSections),

                    // --- Featured Brands Section ---
                    ShoplySectionHeading(
                      title: "Popular Brands",
                      style: Theme.of(context).textTheme.headlineMedium,
                      showActionButton: true, // "View All" button.
                      padding: EdgeInsets.zero,
                      textColor:
                          Theme.of(context).textTheme.titleLarge?.color ??
                          (dark ? TColors.white : TColors.primary),
                      onPressed: () {}, // TODO: Navigate to all brands.
                    ),

                    SizedBox(height: TSizes.spaceBtwItems / 2),

                    // --- Brand Grid Layout ---
                    GridLayout(
                      itemCount: 4, // Number of brand items.
                      mainAxisExtend: 80, // Height of each item.
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {}, // TODO: Navigate to brand details.
                          child: RoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
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
                                    overLayColor:
                                        dark ? TColors.white : TColors.primary,
                                  ),
                                ),

                                SizedBox(height: TSizes.spaceBtwItems / 2),

                                // --- Brand Name & Product Count ---
                                Expanded(
                                  // Takes remaining horizontal space.
                                  child: Column(
                                    mainAxisSize:
                                        MainAxisSize
                                            .min, // Minimize vertical space.
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const BrandTextWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        '526 Products 526 Products 526 Products',
                                        overflow:
                                            TextOverflow
                                                .ellipsis, // Truncate if too long.
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(), // TODO: Add main content (e.g., product listings).
      ),
    );
  }
}

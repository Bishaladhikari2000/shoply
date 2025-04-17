import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Widget for vertical image with text below it
import 'package:shoply/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:shoply/features/shop/view/sub%20category/sub_category.dart';
// App image assets
import 'package:shoply/util/constants/image_strings.dart';
// App sizing constants
import 'package:shoply/util/constants/sizes.dart';

/// Horizontal scrolling list of category cards (image + text)
class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Fixed height container for the horizontal list
      height: 100, // Slightly increased for better visibility
      // Horizontal ListView builder for efficient rendering
      child: ListView.builder(
        // Add horizontal padding so first/last items aren't clipped
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),

        // Optimize for small lists (won't take infinite space)
        shrinkWrap: true,

        // Display 8 category items
        itemCount: 8,

        // Make the list scroll horizontally
        scrollDirection: Axis.horizontal,

        // Builder function for each category item
        itemBuilder: (_, index) {
          // Reusable widget that shows an image with text below it
          return ShoplyVerticaIImageText(
            // Using shoe icon for all categories (demo only)
            image: ShoplyImages.shoeIcon,
            // Static text for demo purposes
            title: 'shoes',

            onTap: () => Get.to(() => SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}

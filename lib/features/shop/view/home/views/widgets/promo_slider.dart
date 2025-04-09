// promo_slider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Custom widgets
import 'package:shoply/common/widgets/custom_shapes/container/circular_widget.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';

// Controllers
import 'package:shoply/features/shop/controllers/home_controller.dart';

// Constants
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

/// A carousel slider widget for displaying promotional banners with page indicators.
class PromoSlider extends StatelessWidget {
  final List<String> banners;

  const PromoSlider({
    super.key,
    required this.banners, // List of image URLs for banners
  });

  @override
  Widget build(BuildContext context) {
    // Initialize HomeController using GetX
    final controller = Get.put(HomeController());

    return Column(
      children: [
        // --- MAIN CAROUSEL ---
        CarouselSlider(
          items:
              banners
                  .map(
                    (url) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                      ),
                      child: RoundedImage(
                        imageUrl: url,
                      ), // Custom rounded image widget
                    ),
                  )
                  .toList(),

          options: CarouselOptions(
            viewportFraction: 1.0, // Each item takes full width
            autoPlay: true, // Enable auto-scrolling
            enlargeCenterPage: true, // Zoom effect for center item
            onPageChanged:
                (index, _) =>
                    controller.updatePageIndicator(index), // Update active dot
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        // --- PAGE INDICATORS ---
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularWidget(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor:
                      controller.carouselCurrentIndex.value == i
                          ? TColors
                              .primary // Active indicator
                          : Colors.grey, // Inactive indicator
                ),
            ],
          ),
        ),
      ],
    );
  }
}

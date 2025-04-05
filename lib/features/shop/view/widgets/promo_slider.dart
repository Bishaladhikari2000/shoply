// In promo_slider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shoply/common/widgets/custom_shapes/container/circular_widget.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';
import 'package:shoply/features/shop/controllers/home_controller.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  final List<String> banners;

  const PromoSlider({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items:
              banners
                  .map(
                    (url) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                      ),
                      child: RoundedImage(imageUrl: url),
                    ),
                  )
                  .toList(),
          options: CarouselOptions(
            viewportFraction:
                1.0, // Takes full width (will be constrained by padding)
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the indicators
            children: [
              for (
                int i = 0;
                i < banners.length;
                i++
              ) // Use banners.length for dynamic count
                CircularWidget(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor:
                      controller.carouselCurrentIndex.value == i
                          ? TColors.primary
                          : Colors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

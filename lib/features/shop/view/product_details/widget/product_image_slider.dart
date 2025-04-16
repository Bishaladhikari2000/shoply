import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:shoply/common/widgets/icons/circular_icon.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return CurvedEdgeWidgets(
      child: Container(
        color: isDark ? TColors.darkerGrey : TColors.white,
        child: Stack(
          children: [
            // Main Thumbnail Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(ShoplyImages.productImage6)),
                ),
              ),
            ),
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder:
                      (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 8,

                  itemBuilder:
                      (_, index) => RoundedImage(
                        width: 80,
                        backgroundColor: isDark ? TColors.black : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: EdgeInsets.all(TSizes.sm),
                        imageUrl: ShoplyImages.productImage6,
                      ),
                ),
              ),
            ),
            ShoplyAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  onPressed: () {},
                  width: 40,
                  height: 40,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

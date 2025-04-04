import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Slightly increased for better visibility
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return ShoplyVerticaIImageText(
            image: ShoplyImages.shoeIcon,
            title: 'shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}

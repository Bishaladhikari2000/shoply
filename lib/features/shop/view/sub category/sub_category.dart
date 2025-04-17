import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/images/rounded_image.dart';
import 'package:shoply/common/widgets/products/product%20card/product_card_horizontal.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShoplyAppBar(title: Text('Sports Shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Banner Image  --
              RoundedImage(
                width: double.infinity,
                height: null,
                imageUrl: ShoplyImages.promoBanner6,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // -- sub categories ----
              Column(
                children: [
                  // -- heading ---
                  ShoplySectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  // --- product card -----
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:
                          (BuildContext context, index) =>
                              const ProductCardHorizontal(),
                      separatorBuilder:
                          (context, int index) =>
                              const SizedBox(width: TSizes.spaceBtwItems),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

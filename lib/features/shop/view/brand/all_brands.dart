import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/brand/brand_card.dart';
import 'package:shoply/common/widgets/layouts/grid_layouts.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/features/shop/view/brand/brand_products.dart';
import 'package:shoply/util/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- appbar --
      appBar: ShoplyAppBar(title: Text('All Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- heading ---
              ShoplySectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              // -- brand cards ---
              GridLayout(
                mainAxisExtend: 70,
                itemCount: 5,
                itemBuilder:
                    (context, index) => BrandCard(
                      showborder: true,
                      onTap: () => Get.to(() => const BrandProducts()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/brand/brand_card.dart';
import 'package:shoply/common/widgets/products/sortable/sortable_products.dart';
import 'package:shoply/util/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShoplyAppBar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- brand details ---
              BrandCard(showborder: true),
              const SizedBox(height: TSizes.spaceBtwSections),
              // -- sortable products
              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

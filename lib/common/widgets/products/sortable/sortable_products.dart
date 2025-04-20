import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/layouts/grid_layouts.dart';
import 'package:shoply/common/widgets/products/product%20card/product_card_vertical.dart';
import 'package:shoply/util/constants/sizes.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items:
              [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Popularity',
                  ]
                  .map(
                    (option) =>
                        DropdownMenuItem(value: option, child: Text(option)),
                  )
                  .toList(),
          //s
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        // -- Products ---
        GridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => ProductCardVertical(),
        ),
      ],
    );
  }
}

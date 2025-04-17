import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/products/cart/add_remove_button.dart';
import 'package:shoply/common/widgets/products/cart/cart_items.dart';
import 'package:shoply/common/widgets/products/product_price_text.dart';
import 'package:shoply/util/constants/sizes.dart';

class ShoplyCartItems extends StatelessWidget {
  const ShoplyCartItems({super.key, this.showAddRemoveButoons = true});

  final bool showAddRemoveButoons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 2,
      itemBuilder:
          (_, index) => Column(
            children: [
              // Cart Items
              CartItemWidget(),
              if (showAddRemoveButoons)
                const SizedBox(height: TSizes.spaceBtwItems),
              // -- ADD AND REMOVE BUTTONS --
              if (showAddRemoveButoons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // -- EXTRA SPACE ---
                        SizedBox(width: 70),

                        ProductQuantityWithAddAndRemoveButoon(),
                      ],
                    ),
                    // -- PRODUCT TOTAL PRICE
                    ProductPriceText(price: '356'),
                  ],
                ),
            ],
          ),
    );
  }
}

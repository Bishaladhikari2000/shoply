import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shoply/common/widgets/appbar/appbar.dart';

import 'package:shoply/features/shop/view/cart/widgets/cart_items.dart';
import 'package:shoply/features/shop/view/checkout/checkout.dart';

import 'package:shoply/util/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShoplyAppBar(
        showBackArrow: true,
        title: Text(
          'Your Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: ShoplyCartItems(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text('Checkout \$356'),
        ),
      ),
    );
  }
}

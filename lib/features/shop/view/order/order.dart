import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/features/shop/view/order/widget/order_listed_items.dart';
import 'package:shoply/util/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- APPBAR ---
      appBar: ShoplyAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // --- 0RDERS ----
        child: OrderListedItems(),
      ),
    );
  }
}

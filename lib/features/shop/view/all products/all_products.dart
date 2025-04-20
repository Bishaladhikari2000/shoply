import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/products/sortable/sortable_products.dart';
import 'package:shoply/util/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShoplyAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}

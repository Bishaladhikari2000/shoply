import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/features/personalization/view/address/add_new_address.dart';
import 'package:shoply/features/personalization/view/address/widgets/single_address.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        backgroundColor: TColors.primary,
        child: Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: ShoplyAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),

          child: Column(
            children: [
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/ListTiles/settings_menu.dart';
import 'package:shoply/common/widgets/ListTiles/user_profile_tile.dart';
import 'package:shoply/common/widgets/appbar/appbar.dart';
import 'package:shoply/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shoply/common/widgets/texts/section_heading.dart';
import 'package:shoply/features/personalization/view/address/addresses.dart';
import 'package:shoply/features/personalization/view/settings/profile_settings.dart';
import 'package:shoply/features/shop/view/cart/cart.dart';
import 'package:shoply/features/shop/view/order/order.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // --- Header Section ---
              PrimaryHeaderContainer(
                child: Column(
                  children: [
                    // AppBar with user profile and cart icon
                    ShoplyAppBar(
                      title: Text(
                        'Profile',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineMedium!.apply(color: TColors.white),
                      ),
                    ),
                    // Profile Card
                    UserProfileTile(
                      onPressed: () => Get.to(() => const ProfileSettings()),
                    ),
                    SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              ),
              // ---- BODY ------
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    //---- Account Settings --------
                    ShoplySectionHeading(
                      title: "Popular Brands",
                      showActionButton: false,
                    ),

                    SettingsMenuTitle(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address',
                      onTap: () => Get.to(() => UserAddressScreen()),
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout',
                      onTap: () => Get.to(() => CartScreen()),
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders',
                      onTap: () => Get.to(() => OrderScreen()),
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account',
                      onTap: () {},
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons',
                      onTap: () {},
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message',
                      onTap: () {},
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts',
                      onTap: () {},
                    ),
                    // App Settings Section
                    const SizedBox(height: TSizes.spaceBtwSections),
                    ShoplySectionHeading(
                      title: 'App Settings',
                      showActionButton: false,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    SettingsMenuTitle(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase',
                      onTap: () {},
                    ),
                    SettingsMenuTitle(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set Recomendation Based on Location',
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {},
                    ),
                    // Safe Mode Setting
                    SettingsMenuTitle(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {}),
                      onTap: () {},
                    ),

                    // HD Image Quality Setting
                    SettingsMenuTitle(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {}),
                      onTap: () {},
                    ),

                    // Logout Button Section
                    const SizedBox(height: TSizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Logout'),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

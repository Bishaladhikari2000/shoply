// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/features/shop/view/home.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationBarController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkMode ? TColors.black : TColors.white,

          indicatorColor:
              darkMode
                  ? TColors.white.withOpacity(0.1)
                  : TColors.black.withOpacity(0.1),
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,

          // giving the bottom navigation bar a color of scaffold background color
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home_2), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'store'),
            NavigationDestination(
              icon: Icon(Iconsax.heart_add),
              label: 'wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.frame_1),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationBarController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}

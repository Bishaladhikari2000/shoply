// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/device/device_utility.dart';

class ShoplyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShoplyAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading:
            false, // Keep this false since we are manually controlling the leading widget
        leading:
            showBackArrow
                ? IconButton(
                  onPressed: () {
                    if (leadingOnPressed != null) {
                      leadingOnPressed!(); // Call the provided callback if it exists
                    } else {
                      Get.back(); // Default action to go back
                    }
                  },
                  icon: const Icon(Iconsax.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIcon),
                )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/device/device_utility.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class CustomTabBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  // If you want to add the background color to tabs you have to wrap them in Material widget.
  // To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]
  const CustomTabBarWidget({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: dark ? TColors.white : TColors.black,
        labelColor: dark ? TColors.white : TColors.black,
        unselectedLabelColor: TColors.darkGrey,
      ), // TabBar
    ); // Material
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

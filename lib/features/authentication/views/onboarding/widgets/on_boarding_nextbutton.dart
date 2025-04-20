import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/device/device_utility.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),

          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: Icon(Iconsax.arrow_right_3, color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoply/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}

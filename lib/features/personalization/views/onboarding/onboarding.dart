import 'package:flutter/material.dart';
import 'package:shoply/features/personalization/views/onboarding/widgets/onboarding_page.dart';
import 'package:shoply/features/personalization/views/onboarding/widgets/onboarding_skip.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';
import 'package:shoply/util/device/device_utility.dart';
import 'package:shoply/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal PageView
          PageView(
            children: const [
              OnBoardingPage(
                image: ShoplyImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ShoplyImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ShoplyImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // skip button
          OnBoardingSkip(),
          // dot navigation Smooth Page Indicator
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpace,

            child: SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: TColors.dark,
                dotHeight: 6,
              ),
            ),
          ),
          // circle next button
        ],
      ),
    );
  }
}

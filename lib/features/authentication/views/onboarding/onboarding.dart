import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/utils.dart';
import 'package:shoply/features/authentication/controllers/models/onboarding_controller.dart';
import 'package:shoply/features/authentication/views/onboarding/widgets/on_boarding_nextbutton.dart';
import 'package:shoply/features/authentication/views/onboarding/widgets/onbarding_dot_navigation.dart';
import 'package:shoply/features/authentication/views/onboarding/widgets/onboarding_page.dart';
import 'package:shoply/features/authentication/views/onboarding/widgets/onboarding_skip.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal PageView
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          const OnBoardingSkip(),
          // dot navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),
          // circle next button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

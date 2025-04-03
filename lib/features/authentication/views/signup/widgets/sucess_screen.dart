import 'package:flutter/material.dart';
import 'package:shoply/common/styles/spacing_styles.dart';

import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingInAppBarHeight * 2,
          child: Column(
            children: [
              // IMAGE
              Image(
                image: AssetImage(image),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //TITLE & SUBTITLE
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // BUTTONS
              SizedBox(
                width: double.infinity,

                // This property is used to set the width of the button
                // to the maximum available width
                child: ElevatedButton(
                  onPressed: onPressed,
                  // This function is called when the button is pressed
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

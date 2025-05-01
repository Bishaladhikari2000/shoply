import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shoply/features/authentication/controllers/signup/signup_controller.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 4,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) {
                // Update the value based on the new value from the checkbox
                controller.privacyPolicy.value = value ?? false;
                // Notify listeners if you're using a state management solution
                controller
                    .update(); // Call this if you're using GetX or similar
              },
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
              ),
              TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

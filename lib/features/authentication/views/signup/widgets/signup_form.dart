import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/features/authentication/views/signup/widgets/terms_and_conditions.dart';
import 'package:shoply/features/authentication/views/signup/widgets/verify_email.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Row for first name and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.defaultSpace,
              ), // Space between fields
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.inputFieldRadius),
          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Terms and Coniditions
          TermsAndConditions(),
          const SizedBox(height: TSizes.spaceBtwSections),
          // SIGN UP BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              // Using Getx for navigation
              // This will navigate to the VerifyEmailScreen
              // when the button is pressed
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

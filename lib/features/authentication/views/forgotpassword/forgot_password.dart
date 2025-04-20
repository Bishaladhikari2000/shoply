import 'package:flutter/material.dart';
// GetX navigation imports
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
// Icons library
import 'package:iconsax/iconsax.dart';
// Screen imports
import 'package:shoply/features/authentication/views/forgotpassword/reset_password.dart';
// App constants
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';

/// Screen for password recovery via email
/// Allows users to request a password reset link
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Basic app bar with back button
      appBar: AppBar(),

      body: Padding(
        // Consistent padding using app's default space
        padding: EdgeInsets.all(TSizes.defaultSpace),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- HEADING SECTION ---
            // Main title
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Subtitle/instructions
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 1.5),

            // --- FORM SECTION ---
            // Email input field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: const Icon(Iconsax.direct_right), // Email icon
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // --- SUBMIT BUTTON ---
            SizedBox(
              // Full-width button
              width: double.infinity,
              child: ElevatedButton(
                // Navigates to ResetPassword screen when pressed
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

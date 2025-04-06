import 'package:flutter/material.dart';
// GetX state management and navigation
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
// App assets and constants
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';
// Helper functions
import 'package:shoply/util/helpers/helper_functions.dart';

/// Screen confirming password reset email has been sent
/// Provides options to return to app or resend email
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Custom app bar with close button instead of back arrow
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove default back arrow
        actions: [
          // Close button to dismiss screen
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => Get.back(), // Returns to previous screen
          ),
        ],
      ),

      // Scrollable content area
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ), // Consistent padding
          child: Column(
            children: [
              // --- ILLUSTRATION ---
              // Email delivery confirmation image
              Image(
                image: AssetImage(ShoplyImages.deliveredEmailIllustration),
                width:
                    HelperFunctions.screenWidth() * 0.6, // 60% of screen width
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              // --- TEXT CONTENT ---
              // Main title
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Instructional subtitle
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // --- ACTION BUTTONS ---
              // Primary action button
              SizedBox(
                width: double.infinity, // Full width button
                child: ElevatedButton(
                  onPressed: () {}, // TODO: Implement done action
                  child: const Text(TTexts.done),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Secondary action button
              SizedBox(
                width: double.infinity, // Full width button
                child: TextButton(
                  onPressed: () {}, // TODO: Implement resend email
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

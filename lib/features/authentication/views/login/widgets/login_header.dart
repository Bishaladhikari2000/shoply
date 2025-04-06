import 'package:flutter/material.dart';
// App assets and constants
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';

/// Reusable header widget for login screens
/// Displays app logo, title, and subtitle with theme-aware styling
class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark, // Boolean flag for dark mode detection
  });

  final bool dark; // Determines which logo variant to display

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Left-align all content
      children: [
        // --- APP LOGO ---
        // Displays light/dark logo based on theme
        Image(
          height: 150, // Fixed height for the logo
          image: AssetImage(
            dark ? ShoplyImages.lightAppLogo : ShoplyImages.darkAppLogo,
          ),
        ),

        // --- TITLE TEXT ---
        // Main login screen heading
        Text(
          TTexts.loginTitle, // Using text constant
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm), // Small spacing constant
        // --- SUBTITLE TEXT ---
        // Secondary descriptive text
        Text(
          TTexts.loginSubTitle, // Using text constant
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

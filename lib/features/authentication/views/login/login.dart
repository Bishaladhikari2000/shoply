import 'package:flutter/material.dart';

// App styling constants
import 'package:shoply/common/styles/spacing_styles.dart';
// Login screen components
import 'package:shoply/features/authentication/views/login/widgets/login_form.dart';
import 'package:shoply/features/authentication/views/login/widgets/login_header.dart';
// Helper functions
import 'package:shoply/util/helpers/helper_functions.dart';

/// Main login screen that combines all login components
/// Includes header section and login form with theme-aware styling
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Detect if dark mode is enabled
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          // Use predefined padding that accounts for app bar height
          padding: TSpacingStyle.paddingInAppBarHeight,
          child: Column(
            children: [
              // --- HEADER SECTION ---
              // Contains app logo and login titles
              LoginHeader(dark: dark),

              // --- FORM SECTION ---
              // Contains email/password fields and login button
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

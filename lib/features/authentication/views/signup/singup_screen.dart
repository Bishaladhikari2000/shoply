import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/login_signup/form_divider.dart';
import 'package:shoply/common/widgets/login_signup/social_button.dart';
import 'package:shoply/features/authentication/views/signup/widgets/signup_form.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        // This widget allows the content to be scrollable
        // when it exceeds the screen height
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize:
                MainAxisSize.min, // Ensure the column takes minimum height
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // FORM
              SSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Divider
              SDivider(dividerText: TTexts.orSignInWith.toUpperCase()),
              // Social Buttons
              const SizedBox(height: TSizes.spaceBtwSections),
              SSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

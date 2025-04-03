import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/common/widgets/login_signup/form_divider.dart';
import 'package:shoply/common/widgets/login_signup/social_button.dart';
import 'package:shoply/features/authentication/views/forgotpassword/forgot_password.dart';
import 'package:shoply/features/authentication/views/signup/singup_screen.dart';
import 'package:shoply/navigation_menu.dart';
import 'package:shoply/util/constants/colors.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            // EMAIL BOX
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.card_add),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // REMEMBER ME & FORGET PASSWORD
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(TTexts.rememberMe),
                  ],
                ),
                // FORGOT PASSWORD
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),

            // LOGIN BUTTON
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => NavigationMenu()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: dark ? TColors.primary : Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(TTexts.signIn),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                // CREATE ACCOUNT BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SignupScreen()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: dark ? TColors.primary : Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(TTexts.createAccount),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),

            // Create a divider
            const SDivider(dividerText: TTexts.orSignUpWith),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Footer Row (you can add children here)
            SSocialButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/features/authentication/controllers/signup/signup_controller.dart';
import 'package:shoply/features/authentication/views/signup/widgets/terms_and_conditions.dart';
import 'package:shoply/features/authentication/views/signup/widgets/verify_email.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';
import 'package:shoply/util/validators/validation.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // Row for first name and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstname,
                  validator:
                      (value) =>
                          TValidator.validateEmptyText('first name', value),
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
                  validator:
                      (value) =>
                          TValidator.validateEmptyText('last name', value),
                  controller: controller.lastname,
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.inputFieldRadius),

          // username
          TextFormField(
            validator:
                (value) => TValidator.validateEmptyText('Username', value),
            controller: controller.username,
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            validator: (value) => TValidator.validateEmail(value),
            controller: controller.email,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            validator: (value) => TValidator.validatePhoneNumber(value),
            controller: controller.phonenumer,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          // password
          TextFormField(
            validator: (value) => TValidator.validatePassword(value),
            controller: controller.password,
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
              onPressed: () => controller.signup(),

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

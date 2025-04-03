import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply/features/authentication/views/forgotpassword/reset_password.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADINGS
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 1.5),

            // TEXT FIELD
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: const Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            // SUBMIT BUTTON
            SizedBox(
              width: double.infinity,
              // here double.infinity set the full width of the button
              // to the maximum available width
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                // It navigates to the ResetPassword screen
                
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

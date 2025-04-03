import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoply/features/authentication/views/login/login.dart';
import 'package:shoply/features/authentication/views/signup/widgets/sucess_screen.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/constants/sizes.dart';
import 'package:shoply/util/constants/text_strings.dart';
import 'package:shoply/util/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // This property is set to false to prevent the default back button
        // from appearing in the app bar
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            // This function is called when the icon button is pressed
            // It uses GetX to navigate to the LoginScreen
            // and removes all previous routes from the stack
            // This is useful for preventing the user from going back
            // to the signup screen after they have signed up
            // and to ensure a clean navigation stack
            // when the user is done with the signup process
            // and is now on the login screen
            // This is a good practice to maintain a clean navigation stack
            // and to provide a better user experience
            icon: const Icon(CupertinoIcons.clear),
            // This icon is a clear icon from Cupertino icons
            // It is used to indicate a cancel or close action
            // in the app bar
          ),
        ],
      ),
      body: SingleChildScrollView(
        // This widget allows the content to be scrollable
        // when it exceeds the screen height
        child: Padding(
          // Padding around the content gives edge space
          // to the content inside the screen
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          // defaultSpace is a constant defined in the sizes.dart file
          // that provides a standard space value
          // for padding throughout the app
          // This is a good practice to maintain consistency
          // in spacing across different widgets
          // and screens in the app
          // and makes it easier to adjust the layout
          child: Column(
            children: [
              // IMAGE
              Image(
                image: AssetImage(ShoplyImages.deliveredEmailIllustration),
                width: HelperFunctions.screenWidth() * 0.6,
                // This function is used to get the screen width
                // and multiply it by 0.6 to set the width of the image
                // This is a good practice to make the image responsive
                // and to ensure it fits well within the screen
                // without overflowing or causing layout issues
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              // TITLE & SUBTITLE
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
                // This property is used to center the text
                // within the available space
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "test@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,

                // This property is used to center the text
                // within the available space
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // BUTTONS
              SizedBox(
                width: double.infinity,

                // This property is used to set the width of the button
                // to the maximum available width
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        () => SucessScreen(
                          image: ShoplyImages.staticSuccessIllustration,
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                          // This is a good practice to maintain a clean navigation stack
                          // and to provide a better user experience
                          // and to ensure a smooth transition
                          // to the login screen after the signup process
                          // is completed successfully
                        ),
                      ),
                  // This function is called when the button is pressed
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  // This function is called when the button is pressed
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

class TImages {}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/common/widgets/loaders/animation_loader.dart';
import '../constants/colors.dart';
import '../helpers/helper_functions.dart';

/// A utility class for managing a full-screen loading dialog.
class ShoplyFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation.
  /// This method doesn't return anything.
  ///
  /// Parameters:
  /// - text: The text to be displayed in the loading dialog.
  /// - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context:
          Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
      barrierDismissible:
          false, // The dialog can't be dismissed by tapping outside it
      builder:
          (_) => PopScope(
            canPop: false, // Disable popping with the back button
            child: Container(
              color:
                  HelperFunctions.isDarkMode(Get.context!)
                      ? TColors.dark
                      : TColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 250), // Adjust the spacing as needed
                  ShoplyAnimationLoader(text: text, animation: animation),
                ],
              ), // Column
            ), // Container
          ), // PopScope
    );
  }

  /// Close the currently open loading dialog
  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}

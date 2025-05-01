import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loader {
  // Basic loading dialog
  static void showLoading({
    String message = 'Loading...',
    bool dismissible = false,
  }) {
    Get.dialog(
      WillPopScope(
        onWillPop: () async => dismissible,
        child: Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(width: 20),
                Flexible(
                  child: Text(message, style: const TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible,
    );
  }

  // Success loader
  static void showSuccess({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.green,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.check_circle, color: Colors.white),
    );
  }

  // Failure/Error loader
  static void showError({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.error, color: Colors.white),
    );
  }

  // Info/Warning loader
  static void showInfo(String s, {required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.warning, color: Colors.white),
    );
  }

  // Warning loader
  static void showWarning({required String title, String message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor:
          Colors.red, // You can choose a different color for warnings
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.warning, color: Colors.white),
    );
  }

  // Bottom loader bar (e.g., for "Fetching Data..." type actions)
  static void showBottomLoader({String message = 'Please wait...'}) {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 20),
            Text(message, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
      isDismissible: false,
    );
  }

  // Hide any dialog, snackbar, or bottomsheet
  static void dismiss() {
    if ((Get.isDialogOpen ?? false) || (Get.isBottomSheetOpen ?? false)) {
      Get.back();
    }
  }
}

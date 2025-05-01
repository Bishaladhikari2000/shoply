import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shoply/util/helpers/network_manager.dart';
import 'package:shoply/util/popups/full_screen_loader.dart';
import 'package:shoply/util/popups/loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phonenumer = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // -- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      ShoplyFullScreenLoader.openLoadingDialog('Please Wait', '.....');

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        Loader.showWarning(
          title: 'Accept Privacy Policy',
          message: 'Please read and accept out Privacy Policy',
        );
        return;
      }

      // Register user in the Firebase Authentication & Save user data in the Firebase

      // Save Authenticated user data in the Firebase Firestore

      // Show Success Message

      // Move to Verify Email Screen
    } catch (e) {
      // Show some Generic Error to the user
      Loader.showError(
        title: 'Oh Snap!',
        message: e.toString(), // Assuming it requires a 'message' parameter
      );
    } finally {
      // Remove Loader
    }
  }
}

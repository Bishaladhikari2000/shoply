import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shoply/util/constants/image_strings.dart';
import 'package:shoply/util/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
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

      // Form Validation

      // Privacy Policy Check

      // Register user in the Firebase Authentication & Save user data in the Firebase

      // Save Authenticated user data in the Firebase Firestore

      // Show Success Message

      // Move to Verify Email Screen
    } catch (e) {
      // Show some Generic Error to the user
    } finally {
      // Remove Loader
    }
  }
}

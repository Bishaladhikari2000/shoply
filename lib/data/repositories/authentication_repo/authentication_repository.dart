import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoply/features/authentication/views/login/login.dart';
import 'package:shoply/features/authentication/views/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    super.onReady();
    _screenRedirect();
  }

  Future<void> _screenRedirect() async {
    // Local storage check
    await deviceStorage.writeIfNull('isFirstTime', true);
    
    // Wait for a small delay to ensure everything is loaded
    await Future.delayed(const Duration(milliseconds: 500));
    
    // Redirect to appropriate screen
    Get.offAll(() => 
      deviceStorage.read('isFirstTime') == true 
        ? OnBoardingScreen() 
        : LoginScreen()
    );
  }

  // ... rest of your authentication methods ...
}
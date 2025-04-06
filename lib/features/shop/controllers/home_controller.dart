// features/shop/controllers/home_controller.dart
import 'package:get/get.dart'; // GetX state management library

/// Controller for home screen functionality
/// Manages state for the promotional carousel
class HomeController extends GetxController {
  // Singleton pattern to access the controller instance
  static HomeController get instance => Get.find();

  // Observable variable to track current carousel page index
  // Initialized to 0 (first page) and automatically reactive
  final carouselCurrentIndex = 0.obs;

  /// Updates the current page indicator when carousel scrolls
  /// [index] The new page index from the carousel
  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index; // Update observable value
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/features/authentication/views/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final PageController pageController = PageController();
  Rx<int> currentIndex = 0.obs; // Correctly defined reactive variable

  // Update current index when page scroll
  void updatePageIndicator(int index) {
    currentIndex.value = index; // Use .value to update the reactive variable
  }

  // Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentIndex.value = index; // Update the current index
    pageController.jumpToPage(index); // Jump to the selected page
  }

  // Update current index and jump to next page
  void nextPage() {
    if (currentIndex.value == 2) {
      // Assuming you have 3 pages (0, 1, 2)
      Get.to(LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jump to last page
  void skipPage() {
    currentIndex.value = 2; // Assuming you have 3 pages (0, 1, 2)
    pageController.jumpToPage(2);
  }
}

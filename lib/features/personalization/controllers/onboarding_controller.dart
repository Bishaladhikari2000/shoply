import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get to => Get.find();

  // variables

  // update current index when page scroll

  void updatePageIndicator(index) {}

  // jump to specific dot selected page

  void dotNavigationClick(index) {}

  // update current index and jump to next page

  void nextPage(index) {}

  // update current index and jump to last page
  void skipPage(index) {}
}

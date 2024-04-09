import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/login_screen/login_screen.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  // update current page when page is scroll
  void updatePageIndicator(int index) {
    currentPage.value = index;
  }

  // jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  // update current index and jump to next page
  void nextPage() {
    if (currentPage.value == 2) {
      // go to login page
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index and jump to the last page
  void skipPage() {
    pageController.jumpToPage(2);
  }
}

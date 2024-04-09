import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/onboarding_screen/widgets/onboarding_dots_indicator.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/onboarding_screen/widgets/onboarding_next_btn.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/onboarding_screen/widgets/onboarding_page.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/onboarding_screen/widgets/onboarding_skip.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroll Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subtitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          // Skip button
          const OnBoardingSkip(),

          // Dot Indicator
          const OnBoardingDotsIndicator(),

          // Next Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

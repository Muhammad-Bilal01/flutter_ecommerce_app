import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape: const CircleBorder(),
            foregroundColor: TColors.white,
            backgroundColor: dark ? TColors.primary : TColors.black,
          ),
          onPressed: () => OnBoardingController.instance.nextPage(),
          child: const Icon(
            Iconsax.arrow_right_3,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_app/common/widgets/widgets.login_signup/form_divider.dart';
import 'package:flutter_ecommerce_app/common/widgets/widgets.login_signup/social_buttons.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/login_screen/widgets/login_form.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/login_screen/widgets/login_header.dart';
import 'package:flutter_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeight,
          child: Column(
            children: [
              // Header bar Logo and subtitle
              TLoginHeader(),

              /// Form
              TLoginForm(),

              // Divider
              TFormDivider(
                text: TTexts.orSignInWith,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              // Social Buttons
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce_app/common/widgets/widgets.login_signup/form_divider.dart';
import 'package:flutter_ecommerce_app/common/widgets/widgets.login_signup/social_buttons.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/auth_screen/login_screen/widgets/login_form.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/auth_screen/login_screen/widgets/login_header.dart';
import 'package:flutter_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeight,
          child: Column(
            children: [
              // Header bar Logo and subtitle
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              // Divider
              TFormDivider(
                text: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

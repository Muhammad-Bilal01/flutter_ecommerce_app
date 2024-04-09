import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/authentication/screen/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_ecommerce_app/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}

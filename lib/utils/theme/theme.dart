import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/check_box_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    inputDecorationTheme: AppTextFeildTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    inputDecorationTheme: AppTextFeildTheme.darkInputDecorationTheme,
  );
}

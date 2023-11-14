import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelsgo_task/shared/styles/colors.dart';
import 'package:hotelsgo_task/shared/styles/text_styles.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: MyColors.transparentColor,
    )),
    textTheme: TextTheme(
      bodySmall: AppTextStyle.bodySmall,
      bodyMedium: AppTextStyle.bodyMedium,
      bodyLarge: AppTextStyle.bodyLarage,
      headlineMedium: AppTextStyle.headLineMeduim,
      headlineLarge: AppTextStyle.headLineLarge,
    ),
  );
}

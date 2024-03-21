import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/constants/strings.dart';
import 'package:marketna_app/shared/theme/bottom_navigation_bar_theme.dart';
import 'package:marketna_app/shared/theme/input_decoration_theme.dart';

class AppThemeData {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: Strings.defaultFont,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: AppColors.black,
        primary: AppColors.primaryColor,
      ),
      cardTheme: CardTheme(
          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontFamily: Strings.defaultFont,
            fontSize: 22,
            fontWeight: FontWeight.w700),
        displayMedium: TextStyle(
            fontFamily: Strings.defaultFont,
            fontSize: 16,
            fontWeight: FontWeight.w500),
        displaySmall: TextStyle(
            fontFamily: Strings.defaultFont,
            fontSize: 12,
            fontWeight: FontWeight.w300),
      ),
      inputDecorationTheme: inputDecorationTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme);
}

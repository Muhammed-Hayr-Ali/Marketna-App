import 'package:flutter/material.dart';
import 'package:marketna_app/generated/app_colors.dart';

BottomNavigationBarThemeData bottomNavigationBarTheme =
    BottomNavigationBarThemeData(
  elevation: 0,
  backgroundColor: Colors.white,
  selectedItemColor: AppColors.primaryColor,
  unselectedItemColor: AppColors.grayColor,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
);

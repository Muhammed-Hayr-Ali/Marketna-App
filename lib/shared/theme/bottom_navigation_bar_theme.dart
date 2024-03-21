import 'package:flutter/material.dart';
import 'package:marketna_app/constants/app_colors.dart';

BottomNavigationBarThemeData bottomNavigationBarTheme =
    BottomNavigationBarThemeData(
  elevation: 5,
  backgroundColor: Colors.white,
  selectedItemColor: AppColors.primaryColor,
  unselectedItemColor: AppColors.gray,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
);

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/theme/themes.dart';
import 'package:marketna_app/translations/translation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      translations: Localization(),
      title: 'Marketna',
      theme: AppThemeData.lightTheme,
      defaultTransition:  Transition.fade,
      // initialBinding: isAuthenticated ? HomeBinding() : AuthBinding(),
      initialRoute: AppRoutes.splash,
      getPages: RouteGet.getPages,
    );
  }
}

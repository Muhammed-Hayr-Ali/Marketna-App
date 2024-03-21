import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/shared/widget/custom_avatar.dart';
import 'package:marketna_app/src/button_nav_bar/presentation/manager/bottom_nav_bar_controller.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeScreenController _ = Get.find<HomeScreenController>();
  final BottomNavBarController _navBar = Get.find<BottomNavBarController>();
  void _goToProfile() {
    _navBar.changeIndex(3);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketna'),
        centerTitle: true,
        actions: [
          Obx(() => _.currentUser.value.profile != ''
              ? GestureDetector(
                  onTap: _goToProfile,
                  child: CustomAvatar(
                    borderWidth: 1,
                    borderColor: AppColors.gray,
                    size: 38,
                    sourceImage: SourceImage.networkImage,
                    path: StringConvrter.url(
                      url: StringConvrter.url(url: _.currentUser.value.profile),
                    ),
                  ),
                )
              : const SizedBox()),
          const SizedBox(width: 10),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

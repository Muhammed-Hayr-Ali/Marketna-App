import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/assets.dart';
import 'package:marketna_app/src/button_nav_bar/presentation/manager/bottom_nav_bar_controller.dart';
import 'package:marketna_app/src/home/presentation/page/home.dart';
import 'package:marketna_app/src/profile/presentation/page/profile_screen.dart';

class BottonNavBar extends StatelessWidget {
  BottonNavBar({super.key});

  final _ = Get.find<BottomNavBarController>();
  final List<Widget> pages = [
    const HomeScreen(),
    const Center(child: Text('Search')),
    const Center(child: Text('Notification')),
     ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<BottomNavBarController>(
          builder: (_) => pages[_.currentIndex]),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            selectedFontSize: 10,
            unselectedFontSize: 10,
            currentIndex: 0,
            onTap: (index) => _.changeIndex(index),
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.homeIcon),
                  activeIcon: SvgPicture.asset(Assets.homeActive),
                  label: 'Home'.tr),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.cartIcon),
                  activeIcon: SvgPicture.asset(Assets.cartActive),
                  label: 'Cart'.tr),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.favoriteIcon),
                activeIcon: SvgPicture.asset(Assets.favoriteActive),
                label: 'Favorites'.tr,
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.profileIcon),
                  activeIcon: SvgPicture.asset(Assets.profileActive),
                  label: 'Profile'.tr),
            ],
          ),
        ),
      ),
    );
  }
}

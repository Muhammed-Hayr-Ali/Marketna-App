import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/assets.dart';
import 'package:marketna_app/src/button_nav_bar/presentation/manager/bottom_nav_bar_controller.dart';
import 'package:marketna_app/src/home/presentation/page/home.dart';
import 'package:marketna_app/src/profile/presentation/page/screen.dart';

class BottonNavBar extends StatelessWidget {
  BottonNavBar({super.key});

  final List<Widget> pages = [
     HomeScreen(),
    const Center(child: Text('Search')),
    const Center(child: Text('Notification')),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavBarController>(
          builder: (_) => pages[_.currentIndex]),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
          ),
          child: GetBuilder<BottomNavBarController>(
            builder: (_) => BottomNavigationBar(
              selectedFontSize: 10,
              unselectedFontSize: 10,
              currentIndex: _.currentIndex,
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
      ),
    );
  }
}

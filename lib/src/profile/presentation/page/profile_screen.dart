import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/src/profile/presentation/manager/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final _ = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Obx(() => Text('New Profile Screen ${_.currentIndex}'))),
    );
  }
}

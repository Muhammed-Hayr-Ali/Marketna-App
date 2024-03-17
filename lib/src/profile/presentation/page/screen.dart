import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';
import 'package:marketna_app/src/profile/presentation/widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ProfileScreenController _ = Get.find<ProfileScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => _.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [ProfileWidget()],
                ),
              ),
      ),
    );
  }
}

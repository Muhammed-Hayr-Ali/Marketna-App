import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
// final ProfileScreenController controller = Get.put(ProfileScreenController());
final ProfileScreenController controller = Get.find<ProfileScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(child: Obx(() =>  Text(controller.name.value)),),
    );
  }
}

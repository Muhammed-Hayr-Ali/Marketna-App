import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:rive/rive.dart';

class LoginAnimation extends StatelessWidget {
  LoginAnimation({
    super.key,
  });
  final LoginAnimationController controller =
      Get.find<LoginAnimationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: 300,
        height: 200,
        child: controller.riveArtboard.value != null
            ? Rive(artboard: controller.riveArtboard.value!)
            : null,
      ),
    );
  }
}

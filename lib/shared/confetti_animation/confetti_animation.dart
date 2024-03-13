import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/confetti_animation/confetti_animation_controller.dart';
import 'package:rive/rive.dart';

class ConfettiAnimation extends StatelessWidget {
  ConfettiAnimation({
    super.key,
  });
  final ConfettiAnimationController controller =
      Get.find<ConfettiAnimationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: Get.width,
        width: Get.width,
        child: controller.riveArtboard.value != null
            ? Rive(artboard: controller.riveArtboard.value!)
            : null,
      ),
    );
  }
}

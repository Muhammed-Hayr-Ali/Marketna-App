import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/loading_animation/loadin_animation_controller.dart';
import 'package:rive/rive.dart';

class LoadingAnimation extends StatelessWidget {
  LoadingAnimation({
    super.key,
  });
  final LoadingAnimationController controller =
      Get.find<LoadingAnimationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 150,
        width: 150,
        child: controller.riveArtboard.value != null
            ? Rive(artboard: controller.riveArtboard.value!)
            : null,
      ),
    );
  }
}

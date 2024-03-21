import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/assets.dart';
import 'package:rive/rive.dart';

class ConfettiAnimationController extends GetxController {
  ///Final
  Rx<Artboard?> riveArtboard = Rx<Artboard?>(null);
  /// var
  late SMITrigger explosion;

  @override
  void onInit() {
    super.onInit();
    riveInit();
  }

  void riveInit() {
    rootBundle.load(Assets.riveConfetti).then((value) {
      final file = RiveFile.import(value);
      final art = file.mainArtboard;

      StateMachineController? controller = StateMachineController.fromArtboard(
        art,
        "State Machine 1",
      );
      if (controller != null) {
        art.addController(controller);
        explosion = controller.findSMI('Trigger explosion') as SMITrigger;
      }
      riveArtboard.value = art;
    });
  }
}

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:marketna_app/generated/assets.dart';
import 'package:rive/rive.dart';

class LoginAnimationController extends GetxController {
  /// Final
  Rx<Artboard?> riveArtboard = Rx<Artboard?>(null);
  // var
  SMITrigger? failTrigger, successTrigger;
  SMIBool? isHandsUp, isChecking;
  SMINumber? lookNum;
  int initlength = 100;
  @override
  void onInit() {
    super.onInit();
    riveInit();
  }

  void riveInit() {
    rootBundle.load(Assets.riveLoginCharacter).then((value) {
      final file = RiveFile.import(value);
      final art = file.mainArtboard;

      StateMachineController? controller =
          StateMachineController.fromArtboard(art, "Login Machine");

      if (controller != null) {
        art.addController(controller);
        isChecking = controller.findSMI("isChecking") as SMIBool;
        isHandsUp = controller.findSMI("isHandsUp") as SMIBool;
        lookNum = controller.findSMI("numLook") as SMINumber;
        successTrigger = controller.findSMI("trigSuccess") as SMITrigger;
        failTrigger = controller.findSMI("trigFail") as SMITrigger;
      }

      riveArtboard.value = art;
      update();
    });
  }

  void lookAround() {
    isChecking?.change(true);
    isHandsUp?.change(false);
    lookNum?.change(100.0);
  }

  void moveEyes(int value) {
    int i = 100 - value * 3;
    if (i == 0) return;
    lookNum?.change(i.toDouble());
  }

  void handsUpOnEyes() {
    isHandsUp?.change(true);
    isChecking?.change(false);
  }

  void loginClick() {
    isChecking?.change(false);
    isHandsUp?.change(false);
  }

  void success() {
    successTrigger?.fire();
  }

  void fail() {
    failTrigger?.fire();
  }
}

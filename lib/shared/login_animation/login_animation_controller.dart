import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

import 'package:marketna_app/generated/assets.dart';
import 'package:rive/rive.dart';

class LoginAnimationController extends GetxController {
  /// Final
  Rx<Artboard?> riveArtboard = Rx<Artboard?>(null);
  final keyboardVisibilityController = KeyboardVisibilityController();
  late StreamSubscription<bool> keyboardSubscription;

  // var
  SMITrigger? failTrigger, successTrigger;
  SMIBool? isHandsUp, isChecking;
  SMINumber? lookNum;
  double rtlValue = 100;
  double ltrValue = 0;
  @override
  void onInit() {
    super.onInit();
    riveInit();
    addKeybordaddListener();
  }

  Future<void> riveInit() async {
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
    !isRtl() ? lookNum?.change(ltrValue) : lookNum?.change(rtlValue);
  }

  void moveEyes(int value) {
    if (!isRtl()) {
      lookNum?.change((value * 3).toDouble());
      ltrValue = (value * 3).toDouble();
      return;
    }
    int i = 100;
    double newValue = i - (value * 3);
    if (newValue <= 4) return;
    lookNum?.change(newValue);
    rtlValue = newValue;
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

  void addKeybordaddListener() {
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      if (!visible) {
        isChecking?.change(false);
        isHandsUp?.change(false);
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    keyboardSubscription.cancel();
  }

  bool isRtl() {
    final locale = Get.locale;
    if (locale != null) {
      return locale.languageCode == 'ar' ? true : false;
    }
    return false;
  }
}

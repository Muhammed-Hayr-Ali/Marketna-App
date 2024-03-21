import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/assets.dart';
import 'package:rive/rive.dart';

class LoadingAnimationController extends GetxController {
  /// Final
  Rx<Artboard?> riveArtboard = Rx<Artboard?>(null);

  ///var
  late SMITrigger check, error, reset;

  @override
  void onInit() {
    super.onInit();
    riveInit();
  }

  Future<void> riveInit() async {
    rootBundle.load(Assets.riveloading).then(
      (data) async {
        final file = RiveFile.import(data);
        final art = file.mainArtboard;

        StateMachineController? controller =
            StateMachineController.fromArtboard(
          art,
          "check Machine",
        );
        if (controller != null) {
          art.addController(controller);
          check = controller.findSMI("Check") as SMITrigger;
          error = controller.findSMI("Error") as SMITrigger;
          reset = controller.findSMI("Reset") as SMITrigger;
        }
        riveArtboard.value = art;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/strings.dart';
import 'package:marketna_app/shared/widget/logo.dart';
import 'package:marketna_app/src/splash/presentation/manager/splash_controller.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController _ = Get.find<SplashController>();

  void retry() {
    if (_.isLoading.value) return;
    _.retry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: RiveAnimation.asset(
                'assets/riv/background.riv',
                fit: BoxFit.cover,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const SizedBox(
                height: 100,
              ),
              const Center(child: Logo(type: LogoType.vertical)),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Obx(
                    () => _.hasError.value
                        ? Column(
                            children: [
                              Text(_.errorMessage.value.tr),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: retry, child: Text('Retry'.tr))
                            ],
                          )
                        : const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 1.0,
                            ),
                          ),
                  ),
                ),
              ),
              const Text(Strings.appversion, style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/constants/strings.dart';
import 'package:marketna_app/constants/text/splash_text.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
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
                height: 200,
              ),
              // const Center(child: Logo(type: LogoType.vertical)),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  child: Obx(
                    () => _.hasError.value
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                CustomText(
                                  _.errorMessage.value,
                                  textAlign: TextAlign.center,
                                  fontSize: 10.0,
                                  height: 2.0,
                                  color: AppColors.gray,
                                ),
                                const SizedBox(height: 10),
                                CustomButton(
                                    height: 34,
                                    width: 54,
                                    borderRadius: 34,
                                    elevation: 0.2,
                                    isLoading: false,
                                    onPressed: retry,
                                    child: CustomText(
                                      SplashText.retry,
                                      fontSize: 12,
                                    ))
                              ],
                            ),
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

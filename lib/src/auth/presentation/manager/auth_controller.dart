import 'package:get/get.dart';
import 'package:marketna_app/constants/strings.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/auth/domain/use_sases/use_cases.dart';

class AuthController extends GetxController {
  final useCases = Get.find<AuthUseCasesImpl>();

  RxBool isLoading = false.obs;

  Future<void> continueWithGoogle() async {
    isLoading.value = true;
    ApiResult apiResult = await useCases.continueWithGoogle();

    apiResult.when(success: (status, message, data, v) async {
      Get.offAllNamed(AppRoutes.bottomNavBar);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLoading.value = false;
  }

  Future<void> launchDataPolicy() async {
    final Uri url = Uri.parse(Strings.getPrivacyPolicyUrl);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';

class CustomNotification {
  CustomNotification._();

  static showToast({String? title, required String message}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0);
  }

  static showSnackbar({String? title, required String message}) {
    Get.snackbar(
      '',
      '',
      titleText: const SizedBox(),
      messageText: CustomText(message, fontSize: 12.0),
      borderRadius: 4.0,
      snackPosition: SnackPosition.TOP,
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      duration: const Duration(minutes: 4),
    );
  }
}

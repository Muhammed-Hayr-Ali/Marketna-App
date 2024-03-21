import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:marketna_app/constants/local_storage_keys.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/profile/domain/entities/profile_model.dart';

class SubscriptionValidityMiddleware extends GetMiddleware {
  final GetStorage box = GetStorage();
  @override
  int? get priority => 1;

  @override
  set priority(int? value) {
    // Implement setter if necessary
  }
  @override
  RouteSettings? redirect(String? route) {
    final data = box.read(LocalStorageKeys.profile) ?? '';

    if (data == '') {
    }

    final profile = ProfileModel.fromJson(jsonDecode(data));
    final expirationDate = profile.expirationDate;

    if (expirationDate == null) {
    } else {
      DateTime date = DateFormat("yyyy-MM-dd").parse(expirationDate);
      if (date.isBefore(DateTime.now())) {
        CustomNotification.showSnackbar(
            message: 'Oops, subscription has expired');
      }
    }

      return null;
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/constants/local_storage_keys.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/src/profile/domain/entities/profile_model.dart';

class AuthMiddleware extends GetMiddleware {
  final GetStorage box = GetStorage();
  final List blockList = [
    'deleted',
    'blocked',
    'banded',
    'suspended',
    'banned'
  ];
  @override
  int? get priority => 0;

  @override
  set priority(int? value) {
    // Implement setter if necessary
  }

  @override
  RouteSettings? redirect(String? route) {
    final data = box.read(LocalStorageKeys.profile) ?? '';

    if (data == '') {
      return const RouteSettings(name: AppRoutes.auth);
    }

    final profile = ProfileModel.fromJson(jsonDecode(data));
    if (blockList.contains(profile.roleName.toLowerCase())) {
      return const RouteSettings(name: AppRoutes.auth);
    }
    return null;
  }
}

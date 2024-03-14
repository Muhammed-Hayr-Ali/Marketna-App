import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
final HomeScreenController _ = Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(child: Obx(()=> Text(_.catygoryList.length.toString())),),
    );
  }
}

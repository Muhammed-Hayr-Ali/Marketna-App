import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/src/product_details/presentation/manager/controler.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});
  final id = Get.arguments as int;
  final _ = Get.find<ProductDetailsControler>();
  @override
  Widget build(BuildContext context) {
    _.groductDetails(id: id);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(() => _.isLoading.value
              ? const CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: CachedNetworkImage(
                            imageUrl: _.product.value.thumbnailImage),
                      ),
                      Text(_.product.value.productName),
                    ],
                  ),
                )),
        ),
      ),
    );
  }
}

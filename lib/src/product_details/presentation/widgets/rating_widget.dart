import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';

import '../manager/controler.dart';

class RatingWidget extends StatelessWidget {
  final int productId;
  RatingWidget({super.key, required this.productId});
  final _ = Get.find<ProductDetailsControler>();

  @override
  Widget build(BuildContext context) {
    _.getDetailsRating(id: productId);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() => CustomText(_.rating.value)),
          const Icon(Icons.star, color: Colors.amber, size: 16),
        ],
      ),
    );
  }
}

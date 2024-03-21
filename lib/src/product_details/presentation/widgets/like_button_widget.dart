import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:marketna_app/src/product_details/presentation/manager/controler.dart';

class LikeButtonWidget extends StatelessWidget {
  final int productId;
  LikeButtonWidget({super.key, required this.productId});
  final _ = Get.find<ProductDetailsControler>();

  bool isRtl() {
    final locale = Get.locale;
    if (locale != null) {
      return locale.languageCode == 'ar' ? true : false;
    }
    return false;
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    if (!isLiked) {
      _.addToFavorite(id: productId);
    } else {
      _.removeFromFavorite(id: productId);
    }
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Transform.translate(
        offset: isRtl() ? const Offset(-1.5, -0.5) : const Offset(1.5, -0.5),
        child: Obx(() => LikeButton(
              size: 20,
              isLiked: _.favoriteList.contains(productId),
              onTap: onLikeButtonTapped,
              likeBuilder: (value) => Transform.translate(
                offset: isRtl() ? const Offset(-2, -1) : const Offset(-2, -1),
                child: SizedBox(
                  child: value == true
                      ? const Icon(Icons.favorite, color: Colors.red)
                      : const Icon(Icons.favorite_outline,
                          color: Colors.blueGrey),
                ),
              ),
            )),
      ),
    );
  }
}

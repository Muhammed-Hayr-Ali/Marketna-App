import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/shared/converter/rating_converter.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/shared/widget/widget_placeholder.dart';
import 'package:marketna_app/src/home/domain/entities/product/product_model.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';

class ProductsList extends StatelessWidget {
  ProductsList({
    super.key,
  });

  final HomeScreenController _ = Get.find<HomeScreenController>();

  void addToCart({required int productId}) {
    ///TODO Add to cart
    //  _cartController.addToCart(id: productId);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MasonryGridView.count(
        padding: const EdgeInsets.all(10.0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _.allProductList.length,
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 18,
        itemBuilder: (context, index) {
          return card(
            onLongPress: () =>
                addToCart(productId: _.allProductList[index].id!),
            product: _.allProductList[index],
          );
        },
      ),
    );
  }
}

Widget card(
    {required ProductModel product,
    Function()? onLongPress,
    void Function()? onTap}) {
  return Inkk(
    onTap: onTap,
    onLongPress: onLongPress,
    radius: 14,
    child: Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              color: Colors.grey.shade200,
              height: 150,
              width: double.infinity,
              child: product.thumbnailImage != ''
                  ? CachedNetworkImage(
                      filterQuality: FilterQuality.low,
                      fit: BoxFit.cover,
                      imageUrl: product.thumbnailImage!,
                      placeholder: (context, url) => WidgetPlaceholder.loading(
                          child: Container(color: Colors.white)),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )
                  : Center(
                      child: CustomText(product.productName,
                          textAlign: TextAlign.center,
                          fontSize: 12,
                          color: Colors.grey.shade500),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(product.productName.toString(),
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14,
                  color: AppColors.grayColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    '\$${product.price}',
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: product.rating!.isEmpty
                            ? Colors.grey
                            : Colors.amberAccent,
                        size: 12,
                      ),
                      Text(RatingConverter.rati(product.rating!),
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    ),
  );
}

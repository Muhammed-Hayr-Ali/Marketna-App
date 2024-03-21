import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/constants/text/product_details.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/src/product_details/presentation/manager/controler.dart';

class ImagesWidget extends StatelessWidget {
  final int productId;
  final double? size;
  final double? radius;
  ImagesWidget({super.key, required this.productId, this.size, this.radius});
  final _ = Get.find<ProductDetailsControler>();

  void _getImages({required String url}) async {
    Get.toNamed(AppRoutes.imageViewer, arguments: url);
  }

  @override
  Widget build(BuildContext context) {
    _.getDetailsImages(id: productId);
    return Obx(
      () => SizedBox(
        child: _.images.isNotEmpty
            ? SizedBox(
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomText(
                            ProductDetails.images,
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          Inkk(
                            onTap: () {},
                            padding: const EdgeInsets.fromLTRB(4, 0, 4, 2),
                            child: CustomText(
                              ProductDetails.seeAll,
                              color: AppColors.primaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: size ?? 100,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: _.images.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: GestureDetector(
                                  onTap: () => _getImages(
                                      url: StringConvrter.url(
                                          url: _.images[index].url)),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(radius ?? 20),
                                    child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        height: size ?? 100,
                                        width: size ?? 100,
                                        imageUrl: StringConvrter.url(
                                            url: _.images[index].url),
                                        placeholder: (context, url) =>
                                            Container(
                                              color: Colors.grey,
                                              height: size ?? 100,
                                              width: size ?? 100,
                                              child: const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            )),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

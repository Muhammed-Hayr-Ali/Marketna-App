import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/constants/text/home_text.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/shared/widget/widget_placeholder.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';

class CarouselWidget extends StatelessWidget {
  final double? height;
  CarouselWidget({super.key, this.height});

  final HomeScreenController _ = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                '#عروض حصرية',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                'مشاهدة الكل',
                fontSize: 10,
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
        Obx(
          () => _.prmiumProductList.isEmpty
              ? WidgetPlaceholder.loading(child: placeholder(margin: 10))
              : GFCarousel(
                  height: height ?? 140.0,
                  hasPagination: true,
                  activeIndicator: AppColors.primaryColor,
                  passiveIndicator: Colors.white,
                  pagerSize: 5.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  pauseAutoPlayOnTouch: const Duration(seconds: 10),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1.0,
                  items: _.prmiumProductList.map((product) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Inkk(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          child: product.thumbnailImage != ''
                              ? CachedNetworkImage(
                                  height: double.infinity,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  imageUrl: StringConvrter.url(
                                      url: product.thumbnailImage!),
                                  placeholder: (context, url) => placeholder(
                                      child: Icon(Icons.hourglass_bottom,
                                          color: AppColors.gray)),
                                  errorWidget: (context, url, error) =>
                                      placeholder(
                                          child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.error, color: AppColors.gray),
                                      CustomText(HomeText.imageNotFound.tr,
                                          color: AppColors.gray),
                                    ],
                                  )),
                                )
                              : placeholder(
                                  height: height,
                                  margin: 10,
                                  child: CustomText(product.productName ?? '',
                                      color: AppColors.gray),
                                ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
        ),
      ],
    );
  }
}

Widget placeholder({double margin = 0, Widget? child, double? height}) {
  return Container(
    height: height ?? 140.0,
    width: double.infinity,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: margin),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      color: Colors.grey.shade200,
    ),
    child: child,
  );
}

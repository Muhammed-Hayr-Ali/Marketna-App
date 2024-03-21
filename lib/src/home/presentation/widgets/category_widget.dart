import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/constants/text/home_text.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';
import 'package:marketna_app/src/home/presentation/widgets/category_placeholder.dart';

class Category extends StatelessWidget {
  Category({
    Key? key,
  }) : super(key: key);

  final HomeScreenController _ = Get.find<HomeScreenController>();

  void getToCategory({required int id}) {
    debugPrint('get To Category $id');
  }

  void seeAll() {
    debugPrint('see all categories');
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _.catygoryList.isEmpty
          ? CategoryPlaceholder()
          : SizedBox(
              height: 150,
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          HomeText.categories,
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        Inkk(
                          onTap: seeAll,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CustomText(
                              HomeText.seeAll,
                              color: AppColors.primaryColor,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: _.catygoryList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Inkk(
                                radius: 999,
                                onTap: () => getToCategory(
                                    id: _.catygoryList[index].id!),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  color: const Color(0xfff6f6f6),
                                  padding: const EdgeInsets.all(16.0),
                                  child: CachedNetworkImage(
                                    imageUrl: StringConvrter.url(
                                      url: _.catygoryList[index].image ?? '',
                                    ),
                                    color: AppColors.primaryColor,
                                  ),
                                )),
                            CustomText(
                              _.catygoryList[index].name,
                              fontSize: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  static empty() {}
}

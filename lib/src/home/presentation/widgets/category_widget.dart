import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/text.dart';
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
              height: 68,
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(TEXT.categories,
                            color: AppColors.grayColor, fontSize: 18),
                        Inkk(
                          onTap: seeAll,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CustomText(TEXT.seeAll,
                                color: AppColors.primaryColor, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: _.catygoryList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Inkk(
                          onTap: () =>
                              getToCategory(id: _.catygoryList[index].id!),
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                  color: index == 0
                                      ? AppColors.primaryColor
                                      : Colors.transparent,
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: index != 0
                                  ? CustomText(
                                      _.catygoryList[index].name?.tr ?? '',
                                      color: AppColors.grayColor,
                                      fontSize: 14)
                                  : CustomText(
                                      _.catygoryList[index].name?.tr ?? '',
                                      color: Colors.white,
                                      fontSize: 14)),
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

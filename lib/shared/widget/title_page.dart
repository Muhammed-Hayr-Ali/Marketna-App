import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';

class PageTitle extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final double? heightSpace;
  const PageTitle(
      {super.key, this.title, this.subTitle, this.heightSpace = 16});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: title != null
              ? Text(
                  '$title'.tr,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w200),
                )
              : null,
        ),
        SizedBox(height: subTitle != null ? heightSpace : 0),
        SizedBox(
          child: subTitle != null
              ? Text(
                  '$subTitle'.tr,
                  style: TextStyle(
                      color: AppColors.grayColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )
              : null,
        ),
      ],
    );
  }
}

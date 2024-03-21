import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/converter/date_converter.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/shared/widget/custom_avatar.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/src/product_details/presentation/manager/controler.dart';

class Comments extends StatelessWidget {
  final int productId;

  Comments({super.key, required this.productId});
  final _ = Get.find<ProductDetailsControler>();

  @override
  Widget build(BuildContext context) {
    _.getDetailscomment(id: productId);
    return Obx(
      () => ListView.builder(
          itemCount: _.comments.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: CustomAvatar(
                size: 40,
                sourceImage: SourceImage.networkImage,
                path: StringConvrter.url(url: _.comments[index].user.profile),
              ),
              title: Text(_.comments[index].comment),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_.comments[index].user.name),
                  CustomText(
                    DateConverter.dateConverter(
                        date: _.comments[index].created_at,
                        dateType: DateType.relative),
                    color: Colors.grey,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

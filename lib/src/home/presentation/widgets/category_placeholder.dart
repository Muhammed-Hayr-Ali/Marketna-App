import 'package:flutter/material.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/constants/text/home_text.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/widget_placeholder.dart';

class CategoryPlaceholder extends StatelessWidget {
  CategoryPlaceholder({super.key});

  final List<double> items = [37.0, 102.0, 90.0, 49.0, 113.0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(HomeText.categories,
                    color: Colors.black, fontSize: 14),
                CustomText(HomeText.seeAll,
                    color: AppColors.primaryColor, fontSize: 12),
              ],
            ),
          ),
          Flexible(
            child: WidgetPlaceholder.loading(
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                      width: items[index],
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

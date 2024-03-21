import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSearchBar extends StatelessWidget {
  final double? margin;
  final Color? fill;
  final String? hint;
  CustomSearchBar({super.key, this.margin, this.fill, this.hint});

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin ?? 10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: fill ?? Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.search,
              color: Color(0xFFA6A6A8),
            ),
            Expanded(
              child: TextField(
                decoration:
                    InputDecoration(hintText: (hint ?? 'Search product').tr),
                controller: controller,
              ),
            ),
            const Icon(
              Icons.qr_code_scanner_sharp,
              color: Color(0xFFA6A6A8),
            ),
          ],
        ),
      ),
    );
  }
}

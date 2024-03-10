import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/strings.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final dynamic value;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final Color? backgrond;
  final double? borderRadius;
  final TextEditingController controller;

  const CustomDropdown(
      {super.key,
      required this.items,
      this.value,
      this.padding,
      this.width,
      this.backgrond,
      this.borderRadius,
      this.height,
      required this.controller});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late dynamic value;
  @override
  void initState() {
    value = widget.value ?? widget.items[0];
    super.initState();
  }

  void onChanged(dynamic value) {
    widget.controller.text = value;
    setState(() {
      this.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //  alignment: Alignment.center,
        margin: widget.padding ?? const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        width: widget.width ?? double.infinity,
        height: widget.height ?? 52.0,
        decoration: BoxDecoration(
            color: widget.backgrond ?? Colors.grey.shade100,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0)),
        child: DropdownButton(
          value: value,
          items: widget.items
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e.tr,
                      style: TextStyle(
                          fontFamily: Strings.defaultFont,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayColor),
                    ),
                  ))
              .toList(),
          onChanged: (value) => onChanged(value),
          underline: const SizedBox(),
          icon: const SizedBox(),
          isExpanded: true,
          style: const TextStyle(color: Colors.black),
          dropdownColor: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0),
          iconEnabledColor: Colors.grey.shade700,
          iconDisabledColor: Colors.grey.shade700,
          iconSize: 30.0,
          elevation: 16,
          alignment: Alignment.centerRight,
          menuMaxHeight: 300.0,
        ));
  }
}

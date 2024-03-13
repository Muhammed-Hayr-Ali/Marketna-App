import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';

class CustomDatePicker extends StatefulWidget {
  final String? labelText;
  final TextEditingController controller;
  final String? initialDate;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final Color? backgrond;
  final double? borderRadius;
  final String? hintText;

  const CustomDatePicker(
      {super.key,
      required this.controller,
      this.labelText,
      this.initialDate,
      this.padding,
      this.width,
      this.height,
      this.backgrond,
      this.borderRadius,
      this.hintText});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  String? dateTime;

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1924),
      lastDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      initialEntryMode: DatePickerEntryMode.calendar,
      helpText: 'Select a date'.tr,
      cancelText: 'Cancel'.tr,
      confirmText: 'Ok'.tr,
      fieldHintText: 'Year-Month-Day'.tr,
      fieldLabelText: 'Date'.tr,
      errorFormatText: 'Invalid date format'.tr,
      errorInvalidText: 'Invalid date'.tr,
    );

    if (picked != null) {
      String newDate = picked.format('Y-m-d');
      widget.controller.text = newDate;

      setState(() {
        dateTime = newDate;
      });
    }
  }

  void _remove() {
    widget.controller.clear();
    setState(() {
      dateTime = null;
    });
  }

  @override
  void initState() {
    super.initState();
    dateTime = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectDate,
      child: Container(
        height: widget.height ?? 52.0,
        width: widget.width ?? double.infinity,
        margin: widget.padding ?? const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.0),
            color: widget.backgrond ?? Colors.grey.shade100),
        child: Row(
          children: [
            CustomText(
              widget.hintText ?? '',
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(width: widget.hintText == null ? 0 : 10.0),
            Expanded(
              child: dateTime != null
                  ? Text(
                      dateTime ?? '',
                      style: const TextStyle(fontSize: 18),
                    )
                  : Text(
                      '1986-08-11',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    ),
            ),
            SizedBox(
              child: dateTime != null
                  ? GestureDetector(
                      onTap: _remove,
                      child: Icon(
                        Icons.cancel,
                        size: 16,
                        color: AppColors.grayColor,
                      ),
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}

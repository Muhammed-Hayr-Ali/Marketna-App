import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';

class CustomTextField extends StatefulWidget {
  final bool? enabled;
  final bool isPassword;
  final bool suffix;
  final bool enabledSuffix;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final String? hintText;
  final bool autofocus;
  final Widget? prefix;
  final bool? isLtrOnly;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final String? label;

  const CustomTextField(
      {super.key,
      this.isPassword = false,
      required this.controller,
      this.keyboardType,
      this.validator,
      this.onChanged,
      this.suffix = true,
      this.hintText,
      this.autofocus = false,
      this.prefix,
      this.enabled,
      this.isLtrOnly = false,
      this.enabledSuffix = true,
      this.borderRadius = 10,
      this.padding,
      this.onTap,
      this.label});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  updatevisiblity() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  clear() {
    widget.controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.label != null
              ? CustomText(
                  widget.label,
                  fontSize: 12,
                  color: AppColors.gray,
                )
              : const SizedBox.shrink(),
          SizedBox(height: widget.label != null ? 6 : 0),
          TextFormField(
            onTap: widget.onTap,
            textDirection: widget.isLtrOnly == true ? TextDirection.ltr : null,
            cursorColor: AppColors.primaryColor,
            enabled: widget.enabled,
            autofocus: widget.autofocus,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: widget.isPassword ? obscureText : false,
            validator: widget.validator,
            onChanged: widget.onChanged,
            cursorHeight: 26,
            style: TextStyle(
                color: AppColors.gray, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              prefix: widget.prefix,
              hintText: (widget.hintText ?? '').tr,
              suffix: widget.suffix
                  ? GestureDetector(
                      onTap: widget.isPassword ? updatevisiblity : clear,
                      child: widget.isPassword
                          ? Icon(
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 16,
                              color: AppColors.gray,
                            )
                          : widget.enabledSuffix
                              ? Icon(
                                  Icons.cancel,
                                  size: 16,
                                  color: AppColors.gray,
                                )
                              : null,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

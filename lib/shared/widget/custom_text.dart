import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  const CustomText(this.text,
      {super.key, this.color, this.fontSize, this.fontWeight, this.textAlign, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text?.tr ?? '',
      textAlign: textAlign,
      overflow:  overflow,
      style:
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
    );
  }
}

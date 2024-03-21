// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketna_app/constants/assets.dart';
import 'package:marketna_app/constants/strings.dart';

enum LogoType { horizontal, vertical }

class Logo extends StatelessWidget {
  final LogoType? type;
  final Color? color;
  final double? logoSize;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? spacing;
  final bool? showText;

  const Logo({
    Key? key,
    this.type = LogoType.horizontal,
    this.color,
    this.logoSize = 40,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    this.spacing = 10,
    this.showText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showText == false
        ? SvgPicture.asset(Assets.svgLogo, width: logoSize)
        : LogoType.horizontal == type
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                      tag: 'logo',
                      child: SvgPicture.asset(Assets.svgLogo, width: logoSize)),
                  SizedBox(width: spacing),
                  Text(Strings.appTitle,
                      style: TextStyle(
                          color: color,
                          fontSize: fontSize,
                          fontWeight: fontWeight))
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                      tag: 'logo',
                      child: SvgPicture.asset(Assets.svgLogo, width: logoSize)),
                  SizedBox(height: spacing),
                  Text(Strings.appTitle,
                      style: TextStyle(
                          color: color,
                          fontSize: fontSize,
                          fontWeight: fontWeight))
                ],
              );
  }
}

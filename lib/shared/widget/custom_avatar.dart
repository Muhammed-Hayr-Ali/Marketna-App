import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketna_app/generated/assets.dart';
import 'package:shimmer/shimmer.dart';

enum SourceImage { networkImage, localImage }

class CustomAvatar extends StatelessWidget {
  final SourceImage sourceImage;
  final String? path;
  final double size;
  final Color? backgroundColor;
  final double? borderWidth;
  final Color? borderColor;
  const CustomAvatar({
    super.key,
    this.path,
    this.size = 128.0,
    this.backgroundColor,
    this.borderWidth,
    required this.sourceImage,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              width: borderWidth ?? 0.0,
              color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(size),
          color: backgroundColor ?? Colors.grey.shade200),
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child: path == '' || path == null
            ? DecoratedBox(
                decoration: BoxDecoration(
                    color: backgroundColor ?? Colors.grey.shade200),
                child: Padding(
                  padding: EdgeInsets.all(size * 0.2),
                  child: SvgPicture.asset(
                    Assets.user,
                  ),
                ),
              )
            : sourceImage == SourceImage.localImage
                ? Image.file(
                    fit: BoxFit.cover,
                    File(path!),
                  )
                : CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: path!,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: const Color.fromRGBO(245, 245, 245, 1),
                      highlightColor: Colors.grey.shade100,
                      enabled: true,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    errorWidget: (context, url, error) => DecoratedBox(
                      decoration: BoxDecoration(
                          color: backgroundColor ?? Colors.grey.shade200),
                      child: Padding(
                        padding: EdgeInsets.all(size * 0.2),
                        child: SvgPicture.asset(
                          Assets.user,
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}

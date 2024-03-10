import 'package:flutter/material.dart';
import 'package:marketna_app/generated/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final double borderRadius;
  final Color? color;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final Color? progressColor;
  const CustomButton(
      {super.key,
      required this.child,
      this.onPressed,
      this.height,
      this.width,
      this.color,
      required this.isLoading,
      this.padding,
      this.elevation, this.progressColor, this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: color,
          minimumSize: Size(width ?? double.infinity, height ?? 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: isLoading
            ? SizedBox(
                height: height != null ? height! / 2 : 50 / 2,
                width: height != null ? height! / 2 : 50 / 2,
                child:  CircularProgressIndicator(
                  strokeWidth: 1,
                  color: progressColor ?? AppColors.primaryColor,
                ))
            : child,
      ),
    );
  }
}

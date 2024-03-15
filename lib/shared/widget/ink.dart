import 'package:flutter/material.dart';

class Inkk extends StatelessWidget {
  final Widget child;
  final Color? spalshColor;
  final Color? highlightColor;
  final double? radius;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final String? tooltip;
  final bool disable;

  const Inkk({
    Key? key,
    required this.child,
    this.onTap,
    this.radius,
    this.spalshColor,
    this.tooltip,
    this.disable = false,
    this.onLongPress,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.circular(radius ?? 8);
    return Semantics(
      label: tooltip ?? "Button",
      child: ClipRRect(
        borderRadius: borderRadius,
        clipBehavior: Clip.antiAlias,
        child: stack(borderRadius),
      ),
    );
  }

  Widget stack(BorderRadius borderRadius) {
    return Stack(
      children: [
        child,
        if (disable == false)
          Positioned.fill(
              child: Material(
            elevation: 0,
            color: Colors.transparent,
            borderRadius: borderRadius,
            child: InkWell(
              highlightColor: highlightColor != null
                  ? highlightColor!.withOpacity(0.35)
                  : Colors.transparent,
              splashColor: spalshColor != null
                  ? spalshColor!.withOpacity(0.25)
                  : Colors.transparent,
              onTap: onTap ?? () {},
              onLongPress: onLongPress ?? () {},
            ),
          )),
      ],
    );
  }
}

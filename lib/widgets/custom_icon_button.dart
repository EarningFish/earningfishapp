import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(27.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onSecondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              11,
            ),
          )
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
    color: appTheme.whiteA700.withOpacity(0.1),
    borderRadius: BorderRadius.circular(20.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.indigo900.withOpacity(0.1),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          5,
        ),
      )
    ],
  );
  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo900,
    borderRadius: BorderRadius.circular(6.h),
  );
  static BoxDecoration get fillIndigoTL18 => BoxDecoration(
    color: appTheme.indigo900,
    borderRadius: BorderRadius.circular(18.h),
  );

  static BoxDecoration get fillWhite=> BoxDecoration(
    color: appTheme.whiteA700,
    borderRadius: BorderRadius.circular(6.h),
  );

}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(10.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

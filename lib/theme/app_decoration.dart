import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillIndigo900 => BoxDecoration(
    color: appTheme.indigo900,
  );
  static BoxDecoration get outlineIndigo => BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: appTheme.indigo900.withOpacity(0.1),
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineIndigo900 => BoxDecoration(
    color: appTheme.indigo900,
    border: Border(
      bottom: BorderSide(
        color: appTheme.indigo900.withOpacity(0.1),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get gradientPrimaryContainerToIndigoA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(0.99, 1.06),
      colors: [theme.colorScheme.primaryContainer, appTheme.indigoA700],
    ),
  );
  static BoxDecoration get outlineIndigo9001 => BoxDecoration(
    color: appTheme.indigo900.withOpacity(0.04),
    border: Border.all(
      color: appTheme.indigo900.withOpacity(0.05),
      width: 1.h,
    ),
  );
  static BoxDecoration get fillOrange => BoxDecoration(
    color: appTheme.orange50,
  );
  static BoxDecoration get fillRed => BoxDecoration(
    color: appTheme.red800,
  );
  static BoxDecoration get blur => BoxDecoration(
    color: appTheme.gray900.withOpacity(0.41),
  );
  static BoxDecoration get gradientTo => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.76, 0.09),
      end: Alignment(0.17, 0.85),
      colors: [],
    ),
  );
// Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: appTheme.blueGray50,
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get fillGray500 => BoxDecoration(
    color: appTheme.gray500,
  );
  static BoxDecoration get outlineTeal => BoxDecoration(
    color: appTheme.indigo900,
    boxShadow: [
      // BoxShadow(
      //   color: appTheme.teal90026,
      //   spreadRadius: 2.h,
      //   blurRadius: 2.h,
      //   offset: Offset(
      //     0,
      //     8,
      //   ),
      // )
    ],
  );
  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo50,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.37),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
  );
// Gradient decorations
  static BoxDecoration get gradientBlueToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(2.79, -1.27),
          end: Alignment(0, 0.97),
          colors: [appTheme.blue40001, theme.colorScheme.primary],
        ),
      );
  static BoxDecoration get shadow => BoxDecoration();
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
}

class BorderRadiusStyle {
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
    12.h,
  );
  static BorderRadius get customBorderTL16 => BorderRadius.horizontal(
    left: Radius.circular(16.h),
  );
  static BorderRadius get customBorderBL26 => BorderRadius.vertical(
    bottom: Radius.circular(26.h),
  );
  // Circle borders
  static BorderRadius get circleBorder291 => BorderRadius.circular(
        291.h,
      );
  static BorderRadius get circleBorder341 => BorderRadius.circular(
        341.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
    6.h,
  );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
    16.h,
  );
  static BorderRadius get circleBorder17 => BorderRadius.circular(
    17.h,
  );
// Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
    1.h,
  );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
    10.h,
  );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
    23.h,
  );
  static BorderRadius get circleBorder3 => BorderRadius.circular(
    3.h,
  );

}

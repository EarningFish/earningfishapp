import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray900.withOpacity(0.41),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(
          16.h,
        ),
      ),
    ),
  );
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onErrorContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.h),
    ),
  );
  static ButtonStyle get fillIndigoTL6 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.indigo900,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.h),
    ),
  );
  static ButtonStyle get fillIndigoTL61 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.indigo50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.h),
    ),
  );
  static ButtonStyle get fillTeal => ElevatedButton.styleFrom(
    backgroundColor: appTheme.teal400.withOpacity(0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.h),
    ),
  );
// text button style
  static BoxDecoration get gradientToDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(6.h),
    gradient: LinearGradient(
      begin: Alignment(0.64, 0),
      end: Alignment(0.5, 0),
      colors: [appTheme.gray900, appTheme.gray900],
    ),
  );
}

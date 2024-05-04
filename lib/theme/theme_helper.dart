import 'package:flutter/material.dart';
import '../core/app_export.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray100,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 15,
        space: 15,
        color: appTheme.gray50,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 12.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 22.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF080450),
    primaryContainer: Color(0XFF12417B),
    secondaryContainer: Color(0XFFC7C7C7),
    onErrorContainer: Color(0X6C333333),
    onPrimary: Color(0XFF2465AD),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF1B176E),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  Color get indigo50 => Color(0XFFE9E9F2);
  Color get onBottomContainer => Color(0XFF3b64ae);
  Color get bgColor => Color(0XFF035896);
  Color get blue100 => Color(0XFFC6EAFA);
  //white
  Color get indigoA700 => Color(0XFF4132E6);
  Color get white800 => Color(0XFFf5f6fb);
  Color get whiteA700 => Color(0XFFFFFFFF);
  Color get blueGray900 => Color(0XFF333333);
  Color get teal400 => Color(0XFF31B77C);
  Color get teal90026 => Color(0X2601244C);
  // Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue300 => Color(0XFF5BA6F2);
  Color get blue30001 => Color(0XFF65A2D8);
  Color get blue400 => Color(0XFF4399F8);
  Color get blue40001 => Color(0XFF3E97F8);
  Color get blue40002 => Color(0XFF3F97F6);
  Color get blue40003 => Color(0XFF5191D6);
  Color get blue40004 => Color(0XFF4198F7);
  Color get blue40005 => Color(0XFF4391E2);
  Color get blue500 => Color(0XFF3694F0);
  Color get blue50001 => Color(0XFF2F9DF1);
  Color get blue700 => Color(0XFF3377C5);
  Color get blue70001 => Color(0XFF347BB6);
  Color get blue70002 => Color(0XFF387FBD);
  Color get blue900 => Color(0XFF1A5184);
  Color get blueA200 => Color(0XFF3A91F8);
// BlueGray
  Color get blueGray400 => Color(0XFF889190);
  Color get blueGray40001 => Color(0XFF8A9797);
  Color get blueGray40002 => Color(0XFF8B9193);
  Color get blueGray40003 => Color(0XFF858B8A);
  Color get blueGray40004 => Color(0XFF86898A);
  Color get blueGray40005 => Color(0XFF8B9091);
  Color get blueGray40006 => Color(0XFF8B9292);
  Color get blueGray40007 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFEAEDF2);
  Color get blueGray500 => Color(0XFF477DA6);
  Color get blueGray600 => Color(0XFF35658D);
  Color get gray400 => Color(0XFFBBBBBB);

// Cyan
  Color get cyan50 => Color(0XFFE0F9FD);
// Gray
  Color get gray40063 => Color(0X63BBBBBB);
  Color get gray100 => Color(0XFFF5F6FB);
  Color get gray10001 => Color(0XFFF4FAF8);
  Color get gray300 => Color(0XFFE7E4DA);
  Color get gray50 => Color(0XFFF8FBFB);
  Color get gray500 => Color(0XFF9DA0A0);
  Color get gray50001 => Color(0XFF8D9495);
  Color get gray50002 => Color(0XFF9FA6A6);
  Color get gray50003 => Color(0XFF929897);
  Color get gray50004 => Color(0XFF9EA3A2);
  Color get gray5001 => Color(0XFFFAFCFC);
  Color get gray600 => Color(0XFF6D6D6D);
  Color get gray60001 => Color(0XFF6F6F6F);
  Color get gray700 => Color(0XFF585957);
  Color get gray800 => Color(0XFFd5e9d8);
  Color get gray900 => Color(0XFF001E2F);

// Indigo
  Color get indigo400 => Color(0XFF4288C4);
  Color get indigo40001 => Color(0XFF3878B8);
  Color get indigo40002 => Color(0XFF4076B0);
  Color get indigo40003 => Color(0XFF4B8ED1);
  Color get indigo700 => Color(0XFF265B92);
  Color get indigo70001 => Color(0XFF30618D);
  Color get indigo70002 => Color(0XFF2D5B8E);
  Color get indigo900 => Color(0XFF1B166E);
  Color get indigo90001 => Color(0XFF0F467A);
  Color get indigo90002 => Color(0XFF104579);
// LightBlue
  Color get lightBlue50 => Color(0XFFECFBFE);
  Color get lightBlue900 => Color(0XFF1C5E99);
  Color get lightBlue90001 => Color(0XFF12548E);
// LightGreen
  Color get lightGreen50 => Color(0XFFF3F4EE);
// Teal
  Color get teal200 => Color(0XFF80B4DA);
  Color get red400 => Color(0XFFE54F4F);
  Color get red600 => Color(0XFFE83333);
  Color get orange50 => Color(0XFFFFF3E1);
  Color get red800 => Color(0XFFB04B35);

}

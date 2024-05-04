import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.whiteA700,
  );
  static get labelLargeWhiteA700Bold => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.whiteA700,
    fontWeight: FontWeight.w700,
  );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
    fontSize: 18.fSize,
    fontWeight: FontWeight.w700,
  );
  static get titleMediumBold2 => theme.textTheme.titleMedium!.copyWith(
    fontSize: 18.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.black900,
  );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.errorContainer,
  );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.black900,
  );
  static get labelLargeIndigo900 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.indigo900,
  );
  static get bodySmallGray600_2 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray600,
  );
  static get bodySmallIndigo900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.indigo900,
  );
  static get bodySmallGray600_1 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray600,
  );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.black900.withOpacity(0.53),
  );
  static get bodyMediumRed400 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.red400,
  );
  // Body text style
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray50002,
  );
  static get bodySmallWhite=> theme.textTheme.bodySmall!.copyWith(
    color: appTheme.whiteA700,
  );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.primary,
  );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
// Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumNunitoBlack900 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.primaryContainer,
  );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray600,
  );
  static get titleMediumIndigo900 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.indigo900,
  );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w500,
  );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray60001,
  );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.blueGray900,
  );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray500,
    fontSize: 12.fSize,
  );

  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray60001,
    fontSize: 12.fSize,
  );
  static get bodySmallRed400 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.red400,
  );
  static get bodySmallTeal400 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.teal400,
  );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.whiteA700.withOpacity(0.53),
    fontSize: 12.fSize,
  );
  static get bodySmallWhiteA70012 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.whiteA700,
    fontSize: 12.fSize,
  );
// Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.black900,
  );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.black900.withOpacity(0.67),
  );
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.blueGray900,
  );

  static get labelLargeIndigo900Bold => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.indigo900,
    fontWeight: FontWeight.w700,
  );
  static get labelLargeTeal400 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.teal400,
  );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.gray500,
    fontWeight: FontWeight.w500,
  );
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.gray400,
  );
// Title text style
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray600,
  );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.whiteA700,
    fontSize: 18.fSize,
    fontWeight: FontWeight.w700,
  );
// Label text style
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onPrimary,
  );
// Title text style

}

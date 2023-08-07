import 'package:flutter/material.dart';
import 'package:sardordev/core/utils/size_config.dart';
import 'package:sardordev/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePoppinsGray600 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallOrange9008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange900,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallLightblue90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue900,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallDeeporange900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrange900,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallWhiteA7008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodyMediumPoppinsWhiteA700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallOrange900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange900,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallDeeporange90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrange900,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallLightblue900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue900,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Title text style
  static get titleSmallLightblue900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue900,
      );
  static get titleSmallDeeporange900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrange900,
      );
  static get titleSmallOrange900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange900,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}

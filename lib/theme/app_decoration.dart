import 'package:flutter/material.dart';

import 'package:sardordev/core/utils/size_config.dart';
import 'package:sardordev/theme/theme_helper.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fill5 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.42),
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(0.42),
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.deepOrangeA700.withOpacity(0.42),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius customBorderBL20 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
import 'package:sardordev/core/utils/image_consant.dart';
import 'package:sardordev/core/utils/size_config.dart';
import 'package:sardordev/pages/calendar/model/item_model.dart';
import 'package:sardordev/theme/app_decoration.dart';
import 'package:sardordev/theme/text_style.dart';

import 'package:flutter/material.dart';
import 'package:sardordev/theme/theme_helper.dart';
import 'package:sardordev/widgets/image_view.dart';

// ignore: must_be_immutable
class ListrectanglesiItemWidget extends StatelessWidget {
  ListrectanglesiItemWidget(
    this.listrectanglesiItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListrectanglesiItemModel listrectanglesiItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Container(
        decoration: AppDecoration.fill1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                10,
              ),
              width: getHorizontalSize(
                319,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      10,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 12,
              ),
              child: Text(
                listrectanglesiItemModelObj.eventnameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallLightblue900,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
              ),
              child: Text(
                listrectanglesiItemModelObj.manchesteruniteTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.bodySmallLightblue900,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 9,
                bottom: 12,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getSize(
                      18,
                    ),
                    width: getSize(
                      18,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 1,
                      bottom: 1,
                    ),
                    child: Text(
                      listrectanglesiItemModelObj.timeTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLightblue90010,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgFluentlocation24filled,
                    height: getSize(
                      17,
                    ),
                    width: getSize(
                      17,
                    ),
                    margin: getMargin(
                      left: 10,
                      top: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 3,
                    ),
                    child: Text(
                      listrectanglesiItemModelObj.venueTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLightblue90010,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

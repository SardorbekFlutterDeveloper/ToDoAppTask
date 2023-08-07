import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardordev/core/localization/localization.dart';
import 'package:sardordev/core/utils/image_consant.dart';
import 'package:sardordev/core/utils/size_config.dart';
import 'package:sardordev/pages/calendar/model/calendar_model.dart';
import 'package:sardordev/pages/calendar/model/item_model.dart';
import 'package:sardordev/pages/calendar/widget/item_widget.dart';
import 'package:sardordev/theme/button_style.dart';
import 'package:sardordev/theme/text_style.dart';
import 'package:sardordev/theme/theme_helper.dart';
import 'package:sardordev/widgets/elevation_button.dart';
import 'package:sardordev/widgets/image_view.dart';

import 'bloc/calendar_bloc.dart';

import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (context) => CalendarBloc(CalendarState(
        calendarModelObj: CalendarModel(),
      ))
        ..add(CalendarInitialEvent()),
      child: CalendarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 28,
            top: 17,
            right: 28,
            bottom: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_sunday".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "msg_28_september_2021".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmall10,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                            height: getVerticalSize(
                              10,
                            ),
                            width: getHorizontalSize(
                              9,
                            ),
                            margin: getMargin(
                              left: 4,
                              bottom: 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgNotification,
                    height: getSize(
                      28,
                    ),
                    width: getSize(
                      28,
                    ),
                    margin: getMargin(
                      left: 79,
                      top: 1,
                      bottom: 6,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "lbl_september".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgComputer,
                      height: getVerticalSize(
                        23,
                      ),
                      width: getHorizontalSize(
                        56,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_sun".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallSecondaryContainer,
                    ),
                    Text(
                      "lbl_mon".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallSecondaryContainer,
                    ),
                    Text(
                      "lbl_tue".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallSecondaryContainer,
                    ),
                    Text(
                      "lbl_wed".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallSecondaryContainer,
                    ),
                    Text(
                      "lbl_fri".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallSecondaryContainer,
                    ),
                    Text(
                      "lbl_sat".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallSecondaryContainer,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 19,
                  top: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_1".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 34,
                    ),
                    Text(
                      "lbl_2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 31,
                    ),
                    Text(
                      "lbl_3".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 34,
                    ),
                    Text(
                      "lbl_4".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 43,
                      ),
                      child: Text(
                        "lbl_5".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 49,
                      ),
                      child: Text(
                        "lbl_6".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_7".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 34,
                    ),
                    Text(
                      "lbl_8".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 32,
                    ),
                    Text(
                      "lbl_9".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 33,
                    ),
                    Text(
                      "lbl_10".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 42,
                      ),
                      child: Text(
                        "lbl_11".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 46,
                      ),
                      child: Text(
                        "lbl_12".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_13".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Spacer(
                      flex: 49,
                    ),
                    Text(
                      "lbl_14".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 47,
                      ),
                      child: Text(
                        "lbl_15".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Spacer(
                      flex: 50,
                    ),
                    Text(
                      "lbl_16".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 40,
                      ),
                      child: Text(
                        "lbl_17".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 45,
                      ),
                      child: Text(
                        "lbl_18".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: getSize(
                          4,
                        ),
                        width: getSize(
                          4,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          4,
                        ),
                        width: getSize(
                          4,
                        ),
                        margin: getMargin(
                          left: 4,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.deepOrangeA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_19".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 48,
                      ),
                      child: Text(
                        "lbl_20".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 48,
                      ),
                      child: Text(
                        "lbl_21".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "lbl_22".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 37,
                      ),
                      child: Text(
                        "lbl_23".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 42,
                      ),
                      child: Text(
                        "lbl_24".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 78,
                  top: 2,
                  right: 54,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepOrangeA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onError,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  25,
                ),
                width: getHorizontalSize(
                  310,
                ),
                margin: getMargin(
                  top: 10,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getSize(
                          25,
                        ),
                        width: getSize(
                          25,
                        ),
                        margin: getMargin(
                          right: 103,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_25".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 48,
                            ),
                            child: Text(
                              "lbl_26".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 45,
                            ),
                            child: Text(
                              "lbl_27".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 50,
                            ),
                            child: Text(
                              "lbl_28".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 36,
                            ),
                            child: Text(
                              "lbl_29".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 42,
                            ),
                            child: Text(
                              "lbl_30".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.deepOrangeA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        4,
                      ),
                      width: getSize(
                        4,
                      ),
                      margin: getMargin(
                        left: 4,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onError,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_schedule".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl_add_event".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          102,
                        ),
                        getVerticalSize(
                          30,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.labelMedium!,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child:
                      BlocSelector<CalendarBloc, CalendarState, CalendarModel?>(
                    selector: (state) => state.calendarModelObj,
                    builder: (context, calendarModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(
                              14,
                            ),
                          );
                        },
                        itemCount:
                            calendarModelObj?.listrectanglesiItemList.length ??
                                0,
                        itemBuilder: (context, index) {
                          ListrectanglesiItemModel model = calendarModelObj
                                  ?.listrectanglesiItemList[index] ??
                              ListrectanglesiItemModel();
                          return ListrectanglesiItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

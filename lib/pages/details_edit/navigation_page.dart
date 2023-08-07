import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardordev/core/localization/localization.dart';
import 'package:sardordev/core/utils/image_consant.dart';
import 'package:sardordev/core/utils/navigation_service.dart';
import 'package:sardordev/core/utils/size_config.dart';
import 'package:sardordev/pages/details_edit/bloc/detail_edit_bloc.dart';
import 'package:sardordev/pages/details_edit/bloc/detail_edit_event.dart';
import 'package:sardordev/pages/details_edit/bloc/detail_edit_state.dart';
import 'package:sardordev/pages/details_edit/model/appnovigation_model.dart';
import 'package:sardordev/theme/app_decoration.dart';
import 'package:sardordev/theme/button_style.dart';
import 'package:sardordev/theme/text_style.dart';
import 'package:sardordev/theme/theme_helper.dart';
import 'package:sardordev/widgets/app_barapp.dart';
import 'package:sardordev/widgets/elevation_button.dart';
import 'package:sardordev/widgets/icon_button.dart';
import 'package:sardordev/widgets/image_view.dart';

import 'package:flutter/material.dart';

class DetailsEventScreen extends StatelessWidget {
  const DetailsEventScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsEventBloc>(
        create: (context) => DetailsEventBloc(
            DetailsEventState(detailsEventModelObj: DetailsEventModel()))
          ..add(DetailsEventInitialEvent()),
        child: DetailsEventScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DetailsEventBloc, DetailsEventState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: getPadding(top: 18, bottom: 18),
                            decoration: AppDecoration.fill4.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomAppBar(
                                      height: getVerticalSize(40),
                                      leadingWidth: 68,
                                      leading: CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          margin: getMargin(left: 28),
                                          padding: getPadding(all: 8),
                                          onTap: () {
                                            onTapBtnArrowleft(context);
                                          },
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft)),
                                      actions: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgUpload,
                                            height: getSize(14),
                                            width: getSize(14),
                                            margin: getMargin(
                                                left: 28,
                                                top: 12,
                                                right: 10,
                                                bottom: 2)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 8, right: 38),
                                            child: Text("lbl_edit".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodyMediumPoppinsWhiteA700))
                                      ]),
                                  Padding(
                                      padding: getPadding(left: 28, top: 22),
                                      child: Text("msg_watching_football".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              theme.textTheme.headlineMedium)),
                                  Padding(
                                      padding: getPadding(left: 28),
                                      child: Text("msg_manchester_united".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA7008)),
                                  Padding(
                                      padding: getPadding(left: 28, top: 9),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgClockWhiteA700,
                                            height: getSize(18),
                                            width: getSize(18)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 1, bottom: 1),
                                            child: Text("lbl_17_00_18_30".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallWhiteA700))
                                      ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 28, top: 10, bottom: 2),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFluentlocation24filledWhiteA700,
                                            height: getSize(17),
                                            width: getSize(17)),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, top: 2),
                                            child: Text(
                                                "lbl_stamford_bridge".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallWhiteA700))
                                      ]))
                                ])),
                        Container(
                            padding: getPadding(
                                left: 28, top: 27, right: 28, bottom: 27),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_reminder".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleMedium),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Text("msg_15_minutes_befor".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodyLargePoppinsGray600)),
                                  Padding(
                                      padding: getPadding(top: 23),
                                      child: Text("lbl_description".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium)),
                                  Container(
                                      width: getHorizontalSize(312),
                                      margin: getMargin(
                                          top: 8, right: 6, bottom: 5),
                                      child: Text("msg_lorem_ipsum_dolor".tr,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray500))
                                ]))
                      ])),
              bottomNavigationBar: CustomElevatedButton(
                  text: "lbl_delete_event".tr,
                  margin: getMargin(left: 28, right: 28, bottom: 62),
                  leftIcon: Container(
                      margin: getMargin(right: 2),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgFluentdelete24filled)),
                  buttonStyle: CustomButtonStyles.fillOnPrimaryContainer
                      .copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(double.maxFinite, getVerticalSize(54)))),
                  buttonTextStyle: theme.textTheme.titleSmall!)));
    });
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}

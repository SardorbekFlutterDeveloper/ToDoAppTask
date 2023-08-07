import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardordev/core/localization/localization.dart';
import 'package:sardordev/core/utils/image_consant.dart';
import 'package:sardordev/core/utils/navigation_service.dart';
import 'package:sardordev/core/utils/size_config.dart';
import 'package:sardordev/pages/add_event/model/add_event.dart';
import 'package:sardordev/theme/app_decoration.dart';
import 'package:sardordev/theme/button_style.dart';
import 'package:sardordev/theme/theme_helper.dart';
import 'package:sardordev/widgets/elevation_button.dart';
import 'package:sardordev/widgets/image_view.dart';
import 'package:sardordev/widgets/text_form_files.dart';

import 'bloc/add_event_bloc.dart';

import 'package:flutter/material.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddEventBloc>(
        create: (context) =>
            AddEventBloc(AddEventState(addEventModelObj: AddEventModel()))
              ..add(AddEventInitialEvent()),
        child: AddEventScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: getHorizontalSize(360),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(32),
                          width: getHorizontalSize(360),
                          decoration: BoxDecoration(color: appTheme.redA700)),
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftGray60001,
                          height: getSize(24),
                          width: getSize(24),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 16, top: 16),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(left: 13, top: 33, right: 19),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_event_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.25))),
                                BlocSelector<AddEventBloc, AddEventState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.groupnineController,
                                    builder: (context, groupnineController) {
                                      return CustomTextFormField(
                                          controller: groupnineController,
                                          margin: getMargin(top: 5),
                                          textInputAction: TextInputAction.next,
                                          filled: true,
                                          fillColor: appTheme.gray100);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 13, top: 18, right: 19),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("msg_event_description".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.25))),
                                BlocSelector<AddEventBloc, AddEventState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.groupthirteenController,
                                    builder:
                                        (context, groupthirteenController) {
                                      return CustomTextFormField(
                                          controller: groupthirteenController,
                                          margin: getMargin(top: 4),
                                          textInputAction: TextInputAction.next,
                                          filled: true,
                                          fillColor: appTheme.gray100);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 13, top: 17, right: 19),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_event_location".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.25))),
                                BlocSelector<AddEventBloc, AddEventState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.groupelevenController,
                                    builder: (context, groupelevenController) {
                                      return CustomTextFormField(
                                          controller: groupelevenController,
                                          margin: getMargin(top: 5),
                                          textInputAction: TextInputAction.next,
                                          suffix: Container(
                                              padding: getPadding(
                                                  left: 30,
                                                  top: 12,
                                                  right: 8,
                                                  bottom: 13),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8))),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFluentlocation24filledPrimary)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(42)),
                                          filled: true,
                                          fillColor: appTheme.gray100);
                                    })
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 13, top: 18),
                              child: Text("lbl_priority_color".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing:
                                          getHorizontalSize(0.25))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(top: 6),
                              padding: getPadding(
                                  left: 8, top: 4, right: 8, bottom: 4),
                              decoration: AppDecoration.fill5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(23),
                                        margin: getMargin(
                                            left: 1, top: 2, bottom: 2),
                                        decoration: BoxDecoration(
                                            color: appTheme.deepOrange100)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowdownPrimary,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 11))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 13, top: 17, right: 19, bottom: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_event_time".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.25))),
                                BlocSelector<AddEventBloc, AddEventState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.grouptenController,
                                    builder: (context, grouptenController) {
                                      return CustomTextFormField(
                                          controller: grouptenController,
                                          margin: getMargin(top: 5),
                                          filled: true,
                                          fillColor: appTheme.gray100);
                                    })
                              ]))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add".tr,
                margin: getMargin(left: 16, right: 16, bottom: 15),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(46)))),
                buttonTextStyle: theme.textTheme.bodyLarge!)));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}

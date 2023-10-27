import 'controller/selectfacilityactivity_controller.dart';
import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_elevated_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_text_form_field.dart';

class SelectfacilityactivityScreen
    extends GetWidget<SelectfacilityactivityController> {
  const SelectfacilityactivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 29.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_facility".tr,
                          style: CustomTextStyles.headlineSmallPrimary),
                      SizedBox(height: 17.v),
                      Text("lbl_district".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 2.v),
                      CustomTextFormField(
                          controller: controller.selectdistrictController,
                          hintText: "lbl_select_district".tr,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 24.v),
                      Text("lbl_block".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 3.v),
                      CustomTextFormField(
                          controller: controller.selectblockoneController,
                          hintText: "lbl_select_block".tr,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 26.v),
                      Text("lbl_panchayath".tr,
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 1.v),
                      CustomTextFormField(
                          controller: controller.selectpanchayatController,
                          hintText: "msg_select_panchayath".tr,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 26.v),
                      Text("lbl_village".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 1.v),
                      CustomTextFormField(
                          controller: controller.selectvillageController,
                          hintText: "lbl_select_village".tr,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 45.v),
                      CustomElevatedButton(
                          text: "lbl_finish_setup".tr,
                          onTap: () {
                            onTapFinishsetup();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  onTapFinishsetup() {
    // TODO: implement Actions
  }
}

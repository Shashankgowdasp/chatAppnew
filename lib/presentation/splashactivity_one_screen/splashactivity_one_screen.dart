import 'controller/splashactivity_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_checkbox_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_elevated_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_outlined_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_text_form_field.dart';

class SplashactivityOneScreen extends GetWidget<SplashactivityOneController> {
  const SplashactivityOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 5.v),
                          child: Text("lbl_login".tr,
                              style: CustomTextStyles.headlineSmallPrimary)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 16.v),
                          child: Text("lbl_mobile".tr,
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: controller.mobileprefixController,
                          margin: EdgeInsets.only(left: 4.h, top: 3.v),
                          hintText: "lbl_91".tr,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 13.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 23.v),
                          child: Text("lbl_password".tr,
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: controller.passwordController,
                          margin: EdgeInsets.only(left: 4.h, top: 3.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 23.v),
                          child: Text("lbl_role".tr,
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: controller.selectrolelabelController,
                          margin: EdgeInsets.only(left: 4.h, top: 3.v),
                          hintText: "lbl_select_role".tr,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(left: 4.h, top: 28.v),
                          onTap: () {
                            onTapLogin();
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 28.v),
                          child: Text("msg_forgotten_password".tr,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer
                                  .copyWith(
                                      decoration: TextDecoration.underline))),
                      Obx(() => CustomCheckboxButton(
                          text: "lbl_tab_lost".tr,
                          value: controller.tablost.value,
                          margin: EdgeInsets.only(left: 4.h, top: 23.v),
                          onChange: (value) {
                            controller.tablost.value = value;
                          }))
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: "lbl_sign_up".tr,
                margin: EdgeInsets.only(left: 41.h, right: 41.h, bottom: 32.v),
                buttonStyle: CustomButtonStyles.outlineGreenA,
                buttonTextStyle: CustomTextStyles.headlineSmallGreenA700,
                onTap: () {
                  onTapSignup();
                })));
  }

  /// Navigates to the splashactivityScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashactivityScreen.
  onTapSignup() {
    Get.toNamed(
      AppRoutes.splashactivityScreen,
    );
  }

  /// Navigates to the selectfacilityactivityScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectfacilityactivityScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.selectfacilityactivityScreen,
    );
  }
}

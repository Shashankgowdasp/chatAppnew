import 'controller/splashactivity_controller.dart';
import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_elevated_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_outlined_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_text_form_field.dart';

class SplashactivityScreen extends GetWidget<SplashactivityController> {
  const SplashactivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 5.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 26.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_welcome_to".tr,
                                style: CustomTextStyles.headlineSmallPrimary_1),
                            TextSpan(
                                text: "lbl_saheli_app".tr,
                                style: CustomTextStyles
                                    .headlineSmallOnPrimaryContainer_1)
                          ]),
                          textAlign: TextAlign.left),
                      Container(
                          width: 212.h,
                          margin: EdgeInsets.only(top: 2.v, right: 67.h),
                          child: Text("msg_please_proceed_with".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargePrimary)),
                      SizedBox(height: 15.v),
                      Text("lbl_mobile".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 3.v),
                      CustomTextFormField(
                          controller: controller.phonenumberoneController,
                          hintText: "lbl_91".tr,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 13.v)),
                      SizedBox(height: 24.v),
                      Text("lbl_password".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 3.v),
                      CustomTextFormField(
                          controller: controller.passwordController),
                      SizedBox(height: 24.v),
                      Text("lbl_role".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 3.v),
                      CustomTextFormField(
                          controller: controller.selectroleoneController,
                          hintText: "lbl_select_role".tr,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 25.v),
                      CustomElevatedButton(
                          text: "lbl_sign_up".tr,
                          buttonStyle: CustomButtonStyles.outlinePrimary),
                      GestureDetector(
                          onTap: () {
                            onTapTxtIfyoualreadyhave();
                          },
                          child: Container(
                              width: 231.h,
                              margin: EdgeInsets.only(top: 29.v, right: 48.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_if_you_already_have2".tr,
                                        style: CustomTextStyles.bodyLarge18_1),
                                    TextSpan(
                                        text: "lbl_login_here".tr,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: "lbl_login".tr,
                margin: EdgeInsets.only(left: 39.h, right: 43.h, bottom: 29.v),
                onTap: () {
                  onTapLogin();
                })));
  }

  /// Navigates to the splashactivityOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashactivityOneScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.splashactivityOneScreen,
    );
  }

  /// Navigates to the splashactivityOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashactivityOneScreen.
  onTapTxtIfyoualreadyhave() {
    Get.toNamed(
      AppRoutes.splashactivityOneScreen,
    );
  }
}

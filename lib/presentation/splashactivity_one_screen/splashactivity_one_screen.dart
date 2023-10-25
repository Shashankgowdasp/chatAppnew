import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_checkbox_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_elevated_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_outlined_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SplashactivityOneScreen extends StatelessWidget {
  SplashactivityOneScreen({Key? key}) : super(key: key);

  TextEditingController mobileprefixController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController selectrolelabelController = TextEditingController();

  bool tablost = false;

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
                          child: Text("Login",
                              style: CustomTextStyles.headlineSmallPrimary)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 16.v),
                          child:
                              Text("Mobile", style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: mobileprefixController,
                          margin: EdgeInsets.only(left: 4.h, top: 3.v),
                          hintText: "+91",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 13.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 23.v),
                          child: Text("Password",
                              style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: passwordController,
                          margin: EdgeInsets.only(left: 4.h, top: 3.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 23.v),
                          child:
                              Text("Role", style: theme.textTheme.bodyLarge)),
                      CustomTextFormField(
                          controller: selectrolelabelController,
                          margin: EdgeInsets.only(left: 4.h, top: 3.v),
                          hintText: "Select Role",
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      CustomElevatedButton(
                          text: "Login",
                          margin: EdgeInsets.only(left: 4.h, top: 28.v),
                          onTap: () {
                            onTapLogin(context);
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 28.v),
                          child: Text("Forgotten Password",
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer
                                  .copyWith(
                                      decoration: TextDecoration.underline))),
                      CustomCheckboxButton(
                          text: "Tab Lost",
                          value: tablost,
                          margin: EdgeInsets.only(left: 4.h, top: 23.v),
                          onChange: (value) {
                            tablost = value;
                          })
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: "Sign up",
                margin: EdgeInsets.only(left: 41.h, right: 41.h, bottom: 32.v),
                buttonStyle: CustomButtonStyles.outlineGreenA,
                buttonTextStyle: CustomTextStyles.headlineSmallGreenA700,
                onTap: () {
                  onTapSignup(context);
                })));
  }

  /// Navigates to the splashactivityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the splashactivityScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashactivityScreen);
  }

  /// Navigates to the selectfacilityactivityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selectfacilityactivityScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectfacilityactivityScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_elevated_button.dart';
import 'package:shashankgowdasp_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelectfacilityactivityScreen extends StatelessWidget {
  SelectfacilityactivityScreen({Key? key}) : super(key: key);

  TextEditingController selectdistrictController = TextEditingController();

  TextEditingController selectblockoneController = TextEditingController();

  TextEditingController selectpanchayatController = TextEditingController();

  TextEditingController selectvillageController = TextEditingController();

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
                      Text("Facility",
                          style: CustomTextStyles.headlineSmallPrimary),
                      SizedBox(height: 17.v),
                      Text("District", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 2.v),
                      CustomTextFormField(
                          controller: selectdistrictController,
                          hintText: "Select District",
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 24.v),
                      Text("Block", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 3.v),
                      CustomTextFormField(
                          controller: selectblockoneController,
                          hintText: "Select Block",
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 26.v),
                      Text("Panchayath", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 1.v),
                      CustomTextFormField(
                          controller: selectpanchayatController,
                          hintText: "Select Panchayath",
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 26.v),
                      Text("Village", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 1.v),
                      CustomTextFormField(
                          controller: selectvillageController,
                          hintText: "Select Village",
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdropdown)),
                          suffixConstraints: BoxConstraints(maxHeight: 48.v)),
                      SizedBox(height: 45.v),
                      CustomElevatedButton(
                          text: "Finish Setup",
                          onTap: () {
                            onTapFinishsetup(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  onTapFinishsetup(BuildContext context) {
    // TODO: implement Actions
  }
}

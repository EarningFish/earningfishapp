import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/my_profile_screen_bloc.dart';
import 'models/my_profile_screen_model.dart';

class MyProfileScreenKycPage extends StatefulWidget {
  const MyProfileScreenKycPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProfileScreenBloc>(
      create: (context) => MyProfileScreenBloc(MyProfileScreenState(
        myProfileScreenModelObj: MyProfileScreenModel(),
      ))
        ..add(MyProfileScreenInitialEvent()),
      child: MyProfileScreenKycPage(),
    );
  }

  @override
  State<MyProfileScreenKycPage> createState() => _MyProfileScreenPageState();
}

class _MyProfileScreenPageState extends State<MyProfileScreenKycPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 11.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          radius: BorderRadius.circular(
                            50.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 9.h,
                            bottom: 3.v,
                          ),
                          child: CustomIconButton(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgProfileEdit,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildKyc(context),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Basic Verification".tr,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                      ),
                    ),

                  ),
                  SizedBox(height: 10.v),
                  _buildName(context),
                  SizedBox(height: 10.v),
                  _buildEmail(context),
                  SizedBox(height: 10.v),
                  _buildPhoneNumber(context),
                  SizedBox(height: 10.v),
                  _buildPanNumber(context),
                  SizedBox(height: 10.v),
                  _buildPassword(context),
                  SizedBox(height: 10.v),
                  BlocSelector<MyProfileScreenBloc, MyProfileScreenState,
                      TextEditingController?>(
                    selector: (state) => state.nomineevalueController,
                    builder: (context, nomineevalueController) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: CustomTextFormField(
                          controller: nomineevalueController,
                          hintText: "Nominee".tr,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
                            child:
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, AppRoutes.nomineeScreen);

                              },
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdownsline2,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLeftArrow,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Profile".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildKyc(BuildContext context) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 79.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.infoCircleBlack,
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "KYC Temporarily Unavailable".tr,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Please completed basic verification details".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            height: 30,
            width: 148.h,
            text: "Profile Verification".tr,
            buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer,
          )
        ],
      ),
    );
  }
  Widget _buildName(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Mr. Jhon Will".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 2.v),
                Text(
                  "example@gmail.com".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
            child:TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.emailAddressScreen);
                },
              child: Text(
                "Change".tr,
                style: theme.textTheme.titleSmall,
              ),
            )

          )
        ],
      ),
    );
  }
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Phone Number".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "1234567890".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 10.v,
            ),
            child:TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.addPhoneNumberScreen);

              },
              child: Text(
                "Change".tr,
                style: theme.textTheme.titleSmall,
              ),
            )

          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPanNumber(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Pan Number".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "KNB4567890".tr,
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 12.v,
          //     bottom: 10.v,
          //   ),
          //   child:TextButton(
          //     onPressed: () {
          //       // Add your onPressed logic here
          //     },
          //     child: Text(
          //       "Change".tr,
          //       style: theme.textTheme.titleSmall,
          //     ),
          //   )
          //
          // )
        ],
      ),
    );
  }

  ///password widget

  Widget _buildPassword(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,right: 16),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Password".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox( // Adding SizedBox to constrain the width
                  width: 200, // Set a finite width as per your design
                  child: TextField(
                    // Using TextField instead of EditText
                    obscureText: _obscureText, // Hides or shows the entered text
                    style: theme.textTheme.bodyLarge, // Apply the desired text style
                    decoration: InputDecoration(
                      // Optionally, you can add decoration for the TextField
                      border: InputBorder.none,
                      hintText: "Enter password",
                    ),
                  ),
                ),
              ],
            ),
          ),
          // IconButton(
          //   icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility,color: Colors.white,),
          //   onPressed: _togglePasswordVisibility,
          // ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 10.v,
            ),
            child: Text(
              "Edit".tr,
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}

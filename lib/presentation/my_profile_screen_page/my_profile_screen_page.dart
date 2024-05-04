import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/my_profile_screen_bloc.dart';
import 'models/my_profile_screen_model.dart';

class MyProfileScreenPage extends StatelessWidget {
  const MyProfileScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProfileScreenBloc>(
      create: (context) => MyProfileScreenBloc(MyProfileScreenState(
        myProfileScreenModelObj: MyProfileScreenModel(),
      ))
        ..add(MyProfileScreenInitialEvent()),
      child: MyProfileScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              _buildAvatar(context),
              SizedBox(height: 20.v),
              _buildSettingsColumn(context),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSecurityUser,
                          height: 16.v,
                          width: 14.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "256-bit".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "Encrypted".tr,
                          style: theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                    Opacity(
                      opacity: 0.05,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: SizedBox(
                          height: 57.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            indent: 9.h,
                            endIndent: 14.h,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 28.h,
                        bottom: 1.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUserIndigo900,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "100%".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          Text(
                            "Secured".tr,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Opacity(
                      opacity: 0.05,
                      child: SizedBox(
                        height: 57.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          indent: 9.h,
                          endIndent: 14.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        bottom: 1.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsIndigo900,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "ISO-27001".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "Certified".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 27.v),
              Text(
                "App Version : 4.1.2 (2A34D) ".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "©Earningfish 2023.".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "All Rights Reserved.".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 5.v)
            ],
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
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Profile".tr,
      ),
      actions: [
       Container(
            height: 27.v,
            width: 34.h,
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            decoration: AppDecoration.shadow.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder17,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNotification1,
                  height: 23.v,
                  width: 24.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.fromLTRB(14.h, 4.v, 6.h, 18.v),
                    decoration: BoxDecoration(
                      color: appTheme.red600,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

      ],
    );
  }

  /// Section Widget
  Widget _buildAvatar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 47.adaptSize,
            width: 47.adaptSize,
            radius: BorderRadius.circular(
              23.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Mr.Jhon Will".tr,
                      style: CustomTextStyles.titleMediumMedium.copyWith(
                        color: Colors.black,
                      ),
                    ),

                    Container(
                      height: 17.adaptSize,
                      width: 17.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgStar1,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                            radius: BorderRadius.circular(
                              1.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 6.v,
                            width: 8.h,
                            radius: BorderRadius.circular(
                              1.h,
                            ),
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  "+911543698710".tr,
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.profileScreenKyc);
              },
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDownSLine,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 13.v),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNotificationRow(
            context,
            settingsThree: ImageConstant.imgBank,
            notification: "Bank Details".tr,
          ),
          SizedBox(height: 20.v),
          Container(
            decoration: AppDecoration.outlineBlueGray,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 13.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                    bottom: 15.v,
                  ),
                  child: Text(
                    "Refer & Earn".tr,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                      ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 56.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 16.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder1,
                  ),
                  child: Text(
                    "Get 50".tr,
                    style: CustomTextStyles.labelLargeIndigo900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          // BlocSelector<MyProfileScreenBloc, MyProfileScreenState,
          //     TextEditingController?>(
          //   selector: (state) => state.searchController,
          //   builder: (context, searchController) {
          //     return CustomSearchView(
          //       controller: searchController,
          //       hintText: "lbl_setting".tr,
          //     );
          //   },
          // ),
          _buildNotificationRow(
            context,
            settingsThree: ImageConstant.imgSetting,
            notification: "Setting".tr,
          ),
          SizedBox(height: 20.v),
          _buildNotificationRow(
            context,
            settingsThree: ImageConstant.imgHelpSupport,
            notification: "Help & Support".tr,
          ),
          SizedBox(height: 20.v),
          _buildNotificationRow(
            context,
            settingsThree: ImageConstant.imgPlay,
            notification: "How to Use".tr,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNotificationRow(
    BuildContext context, {
    required String settingsThree,
    required String notification,
  }) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: settingsThree,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
              bottom: 13.v,
            ),
            child: Text(
              notification,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownSLine,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
          )
        ],
      ),
    );
  }
}

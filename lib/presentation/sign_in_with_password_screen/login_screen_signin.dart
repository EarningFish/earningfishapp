import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart';

class SignInWithPassword extends StatelessWidget {
  SignInWithPassword({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: SignInWithPassword(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 28.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_sign_in".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                _buildViewTwoColumn(context),
                SizedBox(height: 18.v),
                _buildPasswordColumn(context),
                _buildRememberMeRow(context),
                SizedBox(height: 22.v),
                CustomElevatedButton(
                  text: "lbl_sign_in".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonTextStyle: theme.textTheme.titleMedium!,
                ),
                SizedBox(height: 13.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtDonthaveanaccount(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_don_t_have_an_account2".tr,
                          style: CustomTextStyles.bodySmallGray600_2,
                        ),
                        TextSpan(
                          text: "sign up".tr,
                          style: CustomTextStyles.bodySmallIndigo900,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 344.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.indigo900.withOpacity(0.37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder341,
                  ),
                  child: Container(
                    height: 682.v,
                    width: double.maxFinite,
                    decoration: AppDecoration.fillIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder341,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 35.h,
                              vertical: 110.v,
                            ),
                            decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder291,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin: EdgeInsets.only(right: 56.h),
                                    decoration: BoxDecoration(
                                      color: appTheme.indigo900,
                                      borderRadius: BorderRadius.circular(
                                        3.h,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Container(
                                  height: 9.adaptSize,
                                  width: 9.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.indigo900,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18.v)
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5.adaptSize,
                                width: 5.adaptSize,
                                margin: EdgeInsets.only(left: 116.h),
                                decoration: BoxDecoration(
                                  color: appTheme.indigo900,
                                  borderRadius: BorderRadius.circular(
                                    2.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 27.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(right: 141.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.indigo900,
                                    borderRadius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.v),
                              Container(
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.only(left: 147.h),
                                decoration: BoxDecoration(
                                  color: appTheme.indigo90002,
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              ),
                              SizedBox(height: 81.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse13492,
                                height: 496.v,
                                width: 360.h,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
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
      leadingWidth: 359.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorStroke,
        margin: EdgeInsets.fromLTRB(20.h, 2.v, 330.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewTwoColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone Number".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          BlocSelector<LoginBloc, LoginState, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "enter mobile number".tr,
                textInputType: TextInputType.emailAddress,
                maxLength: 10,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            height: 48.v,
            width: 320.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 16.h),
                ),
                BlocSelector<LoginBloc, LoginState, TextEditingController?>(
                  selector: (state) => state.passwordController,
                  builder: (context, passwordController) {
                    return CustomTextFormField(
                      width: 320.h,
                      controller: passwordController,
                      hintText: "enter password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      alignment: Alignment.center,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<LoginBloc, LoginState, bool?>(
            selector: (state) => state.rememberMe,
            builder: (context, rememberMe) {
              return CustomCheckboxButton(
                text: "Remember me".tr,
                value: rememberMe,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                onChange: (value) {
                  context
                      .read<LoginBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 7.v,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
              },
              child: Text(
                "Forget Password".tr,
                style: CustomTextStyles.bodySmallGray600_1,
              ),
            )

          )
        ],
      ),
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}

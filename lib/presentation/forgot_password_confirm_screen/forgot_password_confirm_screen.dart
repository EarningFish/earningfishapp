import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';

class ForgotPasswordConfirmScreen extends StatelessWidget {
  ForgotPasswordConfirmScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (context) => ForgotPasswordBloc(ForgotPasswordState(
        forgotPasswordModelObj: ForgotPasswordModel(),
      ))
        ..add(ForgotPasswordInitialEvent()),
      child: ForgotPasswordConfirmScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 28.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_forgot_password".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 23.v),
                    _buildForgotPasswordColumn(context),
                    SizedBox(height: 18.v),
                    _buildConfirmColumn(context),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                      text: "lbl_submit".tr,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.forgotPasswordScreenOneScreen);
                      },
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
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
      leadingWidth: 359.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorStroke,
        margin: EdgeInsets.fromLTRB(20.h, 2.v, 330.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordColumn(BuildContext context) {
    return Column(
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
              BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
                  TextEditingController?>(
                selector: (state) => state.passwordController,
                builder: (context, passwordController) {
                  return CustomTextFormField(
                    width: 320.h,
                    controller: passwordController,
                    hintText: "password".tr,
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
    );
  }

  /// Section Widget
  Widget _buildConfirmColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password".tr,
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
              BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
                  TextEditingController?>(
                selector: (state) => state.confirmpasswordController,
                builder: (context, confirmpasswordController) {
                  return CustomTextFormField(
                    width: 320.h,
                    controller: confirmpasswordController,
                    hintText: " confirm password".tr,
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
    );
  }
}

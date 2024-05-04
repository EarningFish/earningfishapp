import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'bloc/authentication_required_bloc.dart';
import 'models/authentication_required_model.dart';

class AuthenticationRequiredScreen extends StatelessWidget {
  const AuthenticationRequiredScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AuthenticationRequiredBloc>(
      create: (context) =>
          AuthenticationRequiredBloc(AuthenticationRequiredState(
        authenticationRequiredModelObj: AuthenticationRequiredModel(),
      ))
            ..add(AuthenticationRequiredInitialEvent()),
      child: AuthenticationRequiredScreen(),
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
            padding: EdgeInsets.only(top: 24.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_in_91_7503308000".tr,
                      style: CustomTextStyles.titleMediumBlack90018,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 287.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 52.h,
                    ),
                    child: Text(
                      "We've sent a one time password (OTP) to the mobile number above. Please enter it to complete verification.".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumOnErrorContainer_1
                          .copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 53.h,
                    right: 52.h,
                  ),
                  child: BlocSelector<AuthenticationRequiredBloc,
                      AuthenticationRequiredState, TextEditingController?>(
                    selector: (state) => state.otpController,
                    builder: (context, otpController) {
                      return CustomPinCodeTextField(
                        context: context,
                        controller: otpController,
                        onChanged: (value) {
                          otpController?.text = value;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 31.v),
                Opacity(
                  opacity: 0.2,
                  child: Text(
                    "lbl_invalid_otp".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer,
                  ),
                ),
                SizedBox(height: 32.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_resend_otp".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "lbl_01_57".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 52.v),
                CustomElevatedButton(
                  text: "Submit".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonTextStyle: theme.textTheme.titleMedium!,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.playScreenContainerScreen);
                  },
                ),
                SizedBox(height: 20.v),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signInWithPassword);
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "sign in with your password".tr,
                      style: CustomTextStyles.bodySmallPrimary,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
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
        margin: EdgeInsets.only(left: 10.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_authentication_required".tr,
      ),
    );
  }
}

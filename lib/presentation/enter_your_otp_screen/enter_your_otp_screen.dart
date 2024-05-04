import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'bloc/enter_your_otp_bloc.dart';
import 'models/enter_your_otp_model.dart';

class EnterYourOtpScreen extends StatelessWidget {
  const EnterYourOtpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EnterYourOtpBloc>(
      create: (context) => EnterYourOtpBloc(EnterYourOtpState(
        enterYourOtpModelObj: EnterYourOtpModel(),
      ))
        ..add(EnterYourOtpInitialEvent()),
      child: EnterYourOtpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 25.v,
          ),
          child: Column(
            children: [
              Text(
                "Enter Your OTP".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 206.h,
                child: Text(
                  "enter 4 digit verification code send to your number".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallGray600.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 33.h,
                  right: 34.h,
                ),
                child: BlocSelector<EnterYourOtpBloc, EnterYourOtpState,
                    TextEditingController?>(
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
                  style: CustomTextStyles.bodyMediumPrimaryContainer,
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
              SizedBox(height: 66.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
                buttonTextStyle: theme.textTheme.titleMedium!,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.playScreenContainerScreen);
                },
              ),
              SizedBox(height: 5.v)
            ],
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
}

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart'; // ignore_for_file: must_be_immutable

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
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
      child: ForgotPasswordScreen(),
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
                  vertical: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_forgot_password".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 24.v),
                    _buildForgotPasswordColumn(context),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                      text: "lbl_submit".tr,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.otpForConfirmPassword);
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
          "msg_email_id_mobile".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 5.v),
        BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
            TextEditingController?>(
          selector: (state) => state.mobileNumberController,
          builder: (context, mobileNumberController) {
            return CustomTextFormField(
              controller: mobileNumberController,
              hintText: "msg_enter_your_email".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }
}

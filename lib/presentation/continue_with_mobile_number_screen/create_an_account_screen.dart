import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/create_an_account_bloc.dart';
import 'models/create_an_account_model.dart';

class ContinueWithMobileNumberScreen extends StatelessWidget {
  ContinueWithMobileNumberScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateAnAccountBloc>(
      create: (context) => CreateAnAccountBloc(CreateAnAccountState(
        createAnAccountModelObj: CreateAnAccountModel(),
      ))
        ..add(CreateAnAccountInitialEvent()),
      child: ContinueWithMobileNumberScreen(),
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
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Welcome,Create account".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                _buildFirstNameColumn(context),
                SizedBox(height: 13.v),
                _buildPhoneNumberColumn(context),
                SizedBox(height: 10.v),
                SizedBox(height: 14.v),
                _buildReferralColumn(context),
                SizedBox(height: 13.v),
                _buildSetPasswordColumn(context),
                SizedBox(height: 6.v),
                SizedBox(height: 23.v),
                CustomElevatedButton(
                  text: "Verify Mobile Number".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonTextStyle: theme.textTheme.titleMedium!,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
                  },
                ),
                SizedBox(height: 14.v),
                GestureDetector(
                  onTap: () {
                    NavigatorService.pushNamed(AppRoutes.loginScreen);
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "already have an account?".tr,
                          style: CustomTextStyles.bodySmallGray600_2,
                        ),
                        TextSpan(
                          text: "Login".tr,
                          style: CustomTextStyles.bodySmallIndigo900,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
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
  Widget _buildFirstNameColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "First Name".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          BlocSelector<CreateAnAccountBloc, CreateAnAccountState,
              TextEditingController?>(
            selector: (state) => state.firstNameController,
            builder: (context, firstNameController) {
              return CustomTextFormField(
                controller: firstNameController,
                hintText: "urvik moradiya".tr,
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberColumn(BuildContext context) {
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
          BlocBuilder<CreateAnAccountBloc, CreateAnAccountState>(
            builder: (context, state) {
              return CustomPhoneNumber(
                country: state.selectedCountry ??
                    CountryPickerUtils.getCountryByPhoneCode('1'),
                controller: state.phoneNumberController,
                onTap: (Country value) {
                  context
                      .read<CreateAnAccountBloc>()
                      .add(ChangeCountryEvent(value: value));
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReferralColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Referral(Optional)".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 5.v),
          BlocSelector<CreateAnAccountBloc, CreateAnAccountState,
              TextEditingController?>(
            selector: (state) => state.idController,
            builder: (context, idController) {
              return CustomTextFormField(
                controller: idController,
                hintText: "enter referral code".tr,
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSetPasswordColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Set Password".tr,
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
                BlocSelector<CreateAnAccountBloc, CreateAnAccountState,
                    TextEditingController?>(
                  selector: (state) => state.passwordController,
                  builder: (context, passwordController) {
                    return CustomTextFormField(
                      width: 320.h,
                      controller: passwordController,
                      hintText: "msg".tr,
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
}

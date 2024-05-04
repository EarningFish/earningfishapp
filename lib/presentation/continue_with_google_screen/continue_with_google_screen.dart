import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/continue_with_google_bloc.dart';
import 'models/continue_with_google_model.dart';

class ContinueWithEmailScreen extends StatelessWidget {
  ContinueWithEmailScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ContinueWithGoogleBloc>(
      create: (context) => ContinueWithGoogleBloc(ContinueWithGoogleState(
        continueWithGoogleModelObj: ContinueWithGoogleModel(),
      ))
        ..add(ContinueWithGoogleInitialEvent()),
      child: ContinueWithEmailScreen(),
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
                      "Welcome,Urvik".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "urvikmoradiya@gmail.com".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                _buildColumnPhoneNumber(context),
                SizedBox(height: 19.v),
                _buildColumnReferral(context),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  text: "Verify Phone Number".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonTextStyle: theme.textTheme.titleMedium!,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
                  },
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
      leadingWidth: 359.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorStroke,
        margin: EdgeInsets.fromLTRB(20.h, 2.v, 330.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnPhoneNumber(BuildContext context) {
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
          BlocBuilder<ContinueWithGoogleBloc, ContinueWithGoogleState>(
            builder: (context, state) {
              return CustomPhoneNumber(
                country: state.selectedCountry ??
                    CountryPickerUtils.getCountryByPhoneCode('1'),
                controller: state.phoneNumberController,
                onTap: (Country value) {
                  context
                      .read<ContinueWithGoogleBloc>()
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
  Widget _buildColumnReferral(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Referral(optional)".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 5.v),
          BlocSelector<ContinueWithGoogleBloc, ContinueWithGoogleState,
              TextEditingController?>(
            selector: (state) => state.idController,
            builder: (context, idController) {
              return CustomTextFormField(
                controller: idController,
                hintText: "enter referral code".tr,
                textInputAction: TextInputAction.done,
              );
            },
          )
        ],
      ),
    );
  }
}

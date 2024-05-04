import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_email_address_bloc.dart';
import 'models/add_email_address_model.dart'; // ignore_for_file: must_be_immutable

class AddEmailAddressScreen extends StatelessWidget {
  AddEmailAddressScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddEmailAddressBloc>(
      create: (context) => AddEmailAddressBloc(AddEmailAddressState(
        addEmailAddressModelObj: AddEmailAddressModel(),
      ))
        ..add(AddEmailAddressInitialEvent()),
      child: AddEmailAddressScreen(),
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
            padding: EdgeInsets.only(top: 9.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  _buildEnterEmail(context),
                  SizedBox(height: 250.v),
                  CustomElevatedButton(
                    text: "Verify email address".tr,
                    buttonTextStyle: theme.textTheme.titleMedium!,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
                    },
                  ),
                  SizedBox(height: 394.v),
                  // CustomElevatedButton(
                  //   text: "lbl_update".tr,
                  //   buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                  //   buttonTextStyle: theme.textTheme.titleMedium!,
                  // )
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
        text: "Email".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterEmail(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter email".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        BlocSelector<AddEmailAddressBloc, AddEmailAddressState,
            TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "enter your new email".tr,
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

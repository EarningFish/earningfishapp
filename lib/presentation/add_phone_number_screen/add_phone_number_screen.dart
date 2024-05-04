import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_phone_number_bloc.dart';
import 'models/add_phone_number_model.dart'; // ignore_for_file: must_be_immutable

class AddPhoneNumberScreen extends StatelessWidget {
  AddPhoneNumberScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddPhoneNumberBloc>(
      create: (context) => AddPhoneNumberBloc(AddPhoneNumberState(
        addPhoneNumberModelObj: AddPhoneNumberModel(),
      ))
        ..add(AddPhoneNumberInitialEvent()),
      child: AddPhoneNumberScreen(),
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
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 29.v,
                  ),
                  child: Column(
                    children: [
                      _buildColumnPhoneNumber(context),
                      Spacer(
                        flex: 43,
                      ),
                      CustomElevatedButton(
                        text: "Verify mobile number".tr,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
                        },
                      ),
                      Spacer(
                        flex: 56,
                      )
                    ],
                  ),
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
        text: "Phone Number".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnPhoneNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        BlocSelector<AddPhoneNumberBloc, AddPhoneNumberState,
            TextEditingController?>(
          selector: (state) => state.phoneNumberController,
          builder: (context, phoneNumberController) {
            return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "enter your new number".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.number,
              validator: (value) {
                if (!isNumeric(value)) {
                  return "err_msg_please_enter_valid_number".tr;
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

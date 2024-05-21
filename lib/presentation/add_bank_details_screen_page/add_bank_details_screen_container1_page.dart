import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_bank_details_screen_container1_bloc.dart';
import 'models/add_bank_details_screen_container1_model.dart';

class AddBankDetailsScreen extends StatelessWidget {
  AddBankDetailsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddBankDetailsScreenContainer1Bloc>(
      create: (context) => AddBankDetailsScreenContainer1Bloc(
          AddBankDetailsScreenContainer1State(
        addBankDetailsScreenContainer1ModelObj:
            AddBankDetailsScreenContainer1Model(),
      ))
        ..add(AddBankDetailsScreenContainer1InitialEvent()),
      child: AddBankDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Please fill this details".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 9.v),
                  _buildBankName(context),
                  SizedBox(height: 10.v),
                  _buildAccountHolder(context),
                  SizedBox(height: 10.v),
                  _buildAccountNumber(context),
                  SizedBox(height: 10.v),
                  _buildConfirmAccount(context),
                  SizedBox(height: 10.v),
                  _buildIfscCode(context),
                  SizedBox(height: 12.v),
                  Text(
                    "Select Account Type".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 12.v),
                  _buildSelectAccountType(context),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                    height: 56.v,
                    width: 320.h,
                    text: "Save Changes".tr,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
                    alignment: Alignment.center,
                  )
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
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Add Bank Details".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildBankName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bank Name".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 8.v),
        BlocSelector<AddBankDetailsScreenContainer1Bloc,
            AddBankDetailsScreenContainer1State, TextEditingController?>(
          selector: (state) => state.nameController,
          builder: (context, nameController) {
            return CustomTextFormField(
              controller: nameController,
              hintText: "Enter bank name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAccountHolder(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account holder name".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 8.v),
        BlocSelector<AddBankDetailsScreenContainer1Bloc,
            AddBankDetailsScreenContainer1State, TextEditingController?>(
          selector: (state) => state.name1Controller,
          builder: (context, name1Controller) {
            return CustomTextFormField(
              controller: name1Controller,
              hintText: "Enter name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAccountNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account number".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 8.v),
        BlocSelector<AddBankDetailsScreenContainer1Bloc,
            AddBankDetailsScreenContainer1State, TextEditingController?>(
          selector: (state) => state.enteraccountnumController,
          builder: (context, enteraccountnumController) {
            return CustomTextFormField(
              controller: enteraccountnumController,
              hintText: "Enter account number".tr,
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

  /// Section Widget
  Widget _buildConfirmAccount(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Account Number".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 8.v),
        BlocSelector<AddBankDetailsScreenContainer1Bloc,
            AddBankDetailsScreenContainer1State, TextEditingController?>(
          selector: (state) => state.idController,
          builder: (context, idController) {
            return CustomTextFormField(
              controller: idController,
              hintText: "Confirm Account Number".tr,
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

  /// Section Widget
  Widget _buildIfscCode(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "IFSC Code".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 8.v),
        BlocSelector<AddBankDetailsScreenContainer1Bloc,
            AddBankDetailsScreenContainer1State, TextEditingController?>(
          selector: (state) => state.addifsccodeoneController,
          builder: (context, addifsccodeoneController) {
            return CustomTextFormField(
              controller: addifsccodeoneController,
              hintText: "Add IFSC code".tr,
              textInputAction: TextInputAction.done,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSelectAccountType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 120.h),
      child: BlocBuilder<AddBankDetailsScreenContainer1Bloc,
          AddBankDetailsScreenContainer1State>(
        builder: (context, state) {
          return state
                  .addBankDetailsScreenContainer1ModelObj!.radioList.isNotEmpty
              ? Row(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: CustomRadioButton(
                      text: "Saving".tr,
                      value: state.addBankDetailsScreenContainer1ModelObj
                              ?.radioList[0] ??
                          "",
                      groupValue: state.selectAccountType,
                      onChange: (value) {
                        context
                            .read<AddBankDetailsScreenContainer1Bloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 27.h,
                      bottom: 1.v,
                    ),
                    child: CustomRadioButton(
                      text: "Current".tr,
                      value: state.addBankDetailsScreenContainer1ModelObj
                              ?.radioList[1] ??
                          "",
                      groupValue: state.selectAccountType,
                      onChange: (value) {
                        context
                            .read<AddBankDetailsScreenContainer1Bloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  )
                ])
              : Container();
        },
      ),
    );
  }
}

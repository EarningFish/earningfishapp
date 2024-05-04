import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_nominee_details_bloc.dart';
import 'models/add_nominee_details_model.dart'; // ignore_for_file: must_be_immutable

class AddNomineeDetailsScreen extends StatelessWidget {
  AddNomineeDetailsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNomineeDetailsBloc>(
      create: (context) => AddNomineeDetailsBloc(AddNomineeDetailsState(
        addNomineeDetailsModelObj: AddNomineeDetailsModel(),
      ))
        ..add(AddNomineeDetailsInitialEvent()),
      child: AddNomineeDetailsScreen(),
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
                padding: EdgeInsets.all(20.h),
                child: Column(
                  children: [
                    _buildFullNameColumn(context),
                    SizedBox(height: 18.v),
                    _buildEmailAddressColumn(context),
                    SizedBox(height: 18.v),
                    _buildPhoneNumberColumn(context),
                    SizedBox(height: 18.v),
                    _buildDateOfBirthColumn(context),
                    SizedBox(height: 18.v),
                    _buildNationalIdColumn(context),
                    SizedBox(height: 20.v),
                    _buildPercentageColumn(context),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddNomineeStack(context),
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
        text: "Nominee Details".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Full Name*".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        BlocSelector<AddNomineeDetailsBloc, AddNomineeDetailsState,
            TextEditingController?>(
          selector: (state) => state.fullNameController,
          builder: (context, fullNameController) {
            return CustomTextFormField(
              controller: fullNameController,
              hintText: "your name".tr,
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
  Widget _buildEmailAddressColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email Address*".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        BlocSelector<AddNomineeDetailsBloc, AddNomineeDetailsState,
            TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "enter email address".tr,
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

  /// Section Widget
  Widget _buildPhoneNumberColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number*".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        BlocSelector<AddNomineeDetailsBloc, AddNomineeDetailsState,
            TextEditingController?>(
          selector: (state) => state.phoneNumberController,
          builder: (context, phoneNumberController) {
            return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "enter your number".tr,
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
  Widget _buildDateOfBirthColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date of Birth".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 6.v),
        GestureDetector(
          onTap: () {
            onTapField(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: BlocSelector<AddNomineeDetailsBloc,
                      AddNomineeDetailsState, String?>(
                    selector: (state) =>
                        state.addNomineeDetailsModelObj!.ddmmyyyy,
                    builder: (context, ddmmyyyy) {
                      return Text(
                        ddmmyyyy ?? "",
                        style: theme.textTheme.bodyMedium,
                      );
                    },
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildNationalIdColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "National id Number*".tr,
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
                imagePath: ImageConstant.imgCheckmark1,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 13.h),
              ),
              BlocSelector<AddNomineeDetailsBloc, AddNomineeDetailsState,
                  TextEditingController?>(
                selector: (state) => state.eqvpm7594bvalueController,
                builder: (context, eqvpm7594bvalueController) {
                  return CustomTextFormField(
                    width: 320.h,
                    controller: eqvpm7594bvalueController,
                    hintText: "eqvpm7594b".tr,
                    hintStyle: TextStyle(color: Colors.grey), // Add color to hintText
                    // hintStyle: CustomTextStyles.bodyMediumErrorContainer,
                    alignment: Alignment.center,
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
  Widget _buildPercentageColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Percentage".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 4.v),
        BlocSelector<AddNomineeDetailsBloc, AddNomineeDetailsState,
            TextEditingController?>(
          selector: (state) => state.valueoneController,
          builder: (context, valueoneController) {
            return CustomTextFormField(
              controller: valueoneController,
              hintText: "40%".tr,
              hintStyle: TextStyle(color: Colors.grey), // Add color to hintText
              // hintStyle: CustomTextStyles.bodyMediumErrorContainer,
              textInputAction: TextInputAction.done,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAddNomineeStack(BuildContext context) {
    return Container(
      height: 56.v,
      width: 320.h,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 20.v,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 7.v),
                child: SizedBox(
                  width: 300.h,
                  child: Divider(
                    color: theme.colorScheme.secondaryContainer,
                  ),
                ),
              ),
            ),
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 320.h,
            text: "Add Nominee".tr,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
            onPressed: () {
              onTapAddnominee(context);
            },
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [addNomineeDetailsModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapField(BuildContext context) async {
    var initialState = BlocProvider.of<AddNomineeDetailsBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.addNomineeDetailsModelObj?.selectedDdmmyyyy = dateTime;
      context.read<AddNomineeDetailsBloc>().add(ChangeDateEvent(
          date: dateTime.format(pattern: dateTimeFormatPattern)));
    }
  }

  /// Navigates to the nomineeScreen when the action is triggered.
  onTapAddnominee(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.nomineeScreen,
    );
  }
}

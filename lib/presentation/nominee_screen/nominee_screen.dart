import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/nominee_bloc.dart';
import 'models/nominee_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart';

class NomineeScreen extends StatelessWidget {
  const NomineeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NomineeBloc>(
      create: (context) => NomineeBloc(NomineeState(
        nomineeModelObj: NomineeModel(),
      ))
        ..add(NomineeInitialEvent()),
      child: NomineeScreen(),
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
            vertical: 22.v,
          ),
          child: Column(
            children: [
              BlocSelector<NomineeBloc, NomineeState, TextEditingController?>(
                selector: (state) => state.avteroneController,
                builder: (context, avteroneController) {
                  return CustomTextFormField(
                    controller: avteroneController,
                    hintText: "Nominee".tr,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(14.h, 15.v, 8.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlus1,
                        height: 20.v,
                        width: 16.h,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 50.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 15.v),
                      child:
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.addNomineeDetailsScreen);

                        },
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownsline2,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 50.v,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.v),
                    borderDecoration:
                        TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  );
                },
              ),
              SizedBox(height: 21.v),
              _buildRowLineEight(context),
              SizedBox(height: 21.v),
              _buildUserprofile(context)
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLeftArrow,
        margin: EdgeInsets.only(left: 10.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Nominee".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLineEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.2,
          child: Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 96.h,
              child: Divider(),
            ),
          ),
        ),
        Text(
          "SAVED NOMINEE".tr.toUpperCase(),
          style: CustomTextStyles.bodyMediumPrimaryContainer,
        ),
        Opacity(
          opacity: 0.2,
          child: Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 96.h,
              child: Divider(),
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserprofile(BuildContext context) {
    return BlocSelector<NomineeBloc, NomineeState, NomineeModel?>(
      selector: (state) => state.nomineeModelObj,
      builder: (context, nomineeModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.v),
              child: SizedBox(
                width: 292.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.black900.withOpacity(0.05),
                ),
              ),
            );
          },
          itemCount: nomineeModelObj?.userprofileItemList.length ?? 0,
          itemBuilder: (context, index) {
            UserprofileItemModel model =
                nomineeModelObj?.userprofileItemList[index] ??
                    UserprofileItemModel();
            return UserprofileItemWidget(
              model,
              onTapTxtEdit: () {
                onTapTxtEdit(context);
              },
            );
          },
        );
      },
    );
  }

  /// Navigates to the addNomineeDetailsScreen when the action is triggered.
  onTapTxtEdit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNomineeDetailsScreen,
    );
  }
}

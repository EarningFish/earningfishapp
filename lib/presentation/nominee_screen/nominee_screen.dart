import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                BlocSelector<NomineeBloc, NomineeState, TextEditingController?>(
                  selector: (state) => state.avteroneController,
                  builder: (context, avteroneController) {
                    return TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Add Nominee',
                        hintStyle: TextStyle(color: Color(0xFF080450)), // Set hint text color
                        prefixIcon: Icon(Icons.add, color: Color(0xFF080450)), // Set prefix icon color
                        suffixIcon: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.addNomineeDetailsScreen);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF080450),
                          ),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(14),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.blueGrey[50]!,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.blueGrey[50]!,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.blueGrey[50]!,
                            width: 1,
                          ),
                        ),
                      ),
                    );

                  },
                ),
                SizedBox(height: 21.v),
                _buildDividerWithTextWidget(context),
                SizedBox(height: 21.v),
                _buildUserprofile(context)
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
        text: "Nominee".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDividerWithTextWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
      ),
      child: Row(
        children: [
          Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child:  Text(
              'SAVED NOMINEE',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            )
          ),
          Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              )),
        ],
      ),
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

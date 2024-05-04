import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_fund_screen_bloc.dart';
import 'models/add_fund_screen_model.dart';

class AddFundScreenPage extends StatelessWidget {
  const AddFundScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddFundScreenBloc>(
      create: (context) => AddFundScreenBloc(AddFundScreenState(
        addFundScreenModelObj: AddFundScreenModel(),
      ))
        ..add(AddFundScreenInitialEvent()),
      child: AddFundScreenPage(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              _buildAvailableCoin(context),
              SizedBox(height: 20.v),
              _buildColumnOffer(context),
              SizedBox(height: 20.v),
              _buildColumnrecommend(context),
              SizedBox(height: 20.v),
              _buildProceedToAdd(context),
              SizedBox(height: 20.v),
              _buildFreeCoinValue(context),
              SizedBox(height: 12.v),
              _buildWallet(context),
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
      leadingWidth: 40.h,
      leading:Icon(
        Icons.arrow_back_ios_new,
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Add Fund".tr,
      ),
      actions: [
        CustomImageView(
          imagePath: ImageConstant.infoCircleBlack,
          height: 17.adaptSize,
          width: 17.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v,right: 16),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAvailableCoin(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 96.v,
        width: 320.h,
        decoration: AppDecoration.gradientPrimaryContainerToIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup9417,
              height: 96.v,
              width: 209.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.h, 5.v, 26.h, 5.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 21.v,
                        bottom: 17.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Available Coins',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Text(
                            '10,000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0.05,
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage105,
                      height: 86.v,
                      width: 90.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEquvalent(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_equvalent_1_00_000".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnOffer(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Gift card Valued at 50% off at Earning Fish ".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "₹ 1,000".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "Apply Promo".tr,
                    style: CustomTextStyles.labelLargeIndigo900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Congrate! WALLET10 promocode applied!".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame40310,
            height: 10.v,
            width: 320.h,
          ),
          _buildEquvalent(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnrecommend(BuildContext context) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended".tr,
            style: CustomTextStyles.labelLargeOnPrimary,
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 23.h),
            child: Row(
              children: [
                Container(
                  decoration: AppDecoration.outlineIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Container(
                    width: 80.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img,
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 6.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "+₹1,000".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildRecommended(
                    context,
                    price: "+₹2,000".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildRecommended(
                    context,
                    price: "+₹5,000".tr,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProceedToAdd(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "Proceed to Add Fund".tr,
      buttonStyle: CustomButtonStyles.fillIndigo,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Section Widget
  Widget _buildFreeCoinValue(BuildContext context) {
    return BlocSelector<AddFundScreenBloc, AddFundScreenState,
        TextEditingController?>(
      selector: (state) => state.freeCoinValueController,
      builder: (context, freeCoinValueController) {
        return CustomTextFormField(
          controller: freeCoinValueController,
          hintText: "lbl_free_coin".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 11.v, 8.h, 11.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgFloatingicon,
              height: 21.v,
              width: 20.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 44.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 15.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdownsline2,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 44.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWallet(BuildContext context) {
    return BlocSelector<AddFundScreenBloc, AddFundScreenState,
        TextEditingController?>(
      selector: (state) => state.walletController,
      builder: (context, walletController) {
        return CustomTextFormField(
          controller: walletController,
          hintText: "msg_wallet_transaction".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(10.h, 11.v, 8.h, 11.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgWallet,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 46.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 10.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdownsline2,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 46.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillWhiteATL8,
        );
      },
    );
  }

  /// Common widget
  Widget _buildRecommended(
    BuildContext context, {
    required String price,
  }) {
    return Container(
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        width: 83.h,
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img,
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 6.v),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                price,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.errorContainer,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

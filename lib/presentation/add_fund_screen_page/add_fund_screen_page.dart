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
        // resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildAvailableCoin(context),
                SizedBox(height: 20.v),
                _buildColumnOffer(context),
                SizedBox(height: 20.v),
                _buildColumnrecommend(context),
                SizedBox(height: 20.v),
                _buildProceedToAdd(context),
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
      leadingWidth: 40.h,
      height: 50,
      leading:Padding(
        padding: const EdgeInsets.only(top:0),
        child: Icon(
          Icons.arrow_back_ios_new,
        ),
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
   return Container(
      width: 400,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(color: Color(0xFF31B77C),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Equvalent = 1,00,000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),
                const SizedBox(width: 6),
                CustomImageView(
                  imagePath: ImageConstant.imgFishCoinIcon,
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v,right: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnOffer(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
            SizedBox(
              height: 50,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                // padding: EdgeInsets.symmetric(
                //   horizontal: 15.h,
                //   vertical: 9.v,
                // ),
                decoration: AppDecoration.fillIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v,left: 20),
                      child: Text(
                        "₹ 1,000".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.appiyPromocadeScreen);
                        },
                        child: Text(
                          "Apply Promo".tr,
                          style: CustomTextStyles.labelLargeIndigo900,
                        ),
                      )

                    )
                  ],
                ),
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
            // CustomImageView(
            //   imagePath: ImageConstant.imgFrame40310,
            //   height: 10.v,
            //   width: 320.h,
            // ),
            _buildEquvalent(context)
          ],
        ),
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
            padding: EdgeInsets.only(right: 0.h),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Container(
                      width: 90.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.outlineIndigo.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child:Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img,
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 6.v),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(top: 1.v),
                              Text(
                                "+₹1,000".tr,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.v),
                    _buildRecommended(
                      context,
                      price: "+₹2,000".tr,
                    ),
                  SizedBox(width: 5.v),
                      _buildRecommended(
                      context,
                      price: "+₹5,000".tr,
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  /// Section Widget
  Widget _buildProceedToAdd(BuildContext context) {
    TextEditingController? freeCoinValueController;
    TextEditingController? walletController;
    return Column(
      children: [
        CustomElevatedButton(
          height: 56.v,
          text: "Proceed to Add Fund".tr,
          buttonStyle: CustomButtonStyles.fillIndigo,
          buttonTextStyle: theme.textTheme.titleMedium!,
        ),
        SizedBox(height: 10.v),
            CustomTextFormField(
              controller: freeCoinValueController,
              hintText: "Free Coin".tr,
              hintStyle: TextStyle(color: Colors.black,),
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
            ),
        SizedBox(height: 10.v),
          CustomTextFormField(
              controller: walletController,
              hintText: "Wallet Transaction History".tr,
              hintStyle: TextStyle(color: Colors.black,),
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
          ),
      ],
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
        width: 90.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img,
                height: 5.adaptSize,
                width: 5.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 6.v),
              ),
               Text(
                  price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

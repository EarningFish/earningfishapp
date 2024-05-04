import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/withdraw_fund_bloc.dart';
import 'models/withdraw_fund_model.dart';

class WithdrawFundScreen extends StatelessWidget {
  const WithdrawFundScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WithdrawFundBloc>(
      create: (context) => WithdrawFundBloc(WithdrawFundState(
        withdrawFundModelObj: WithdrawFundModel(),
      ))
        ..add(WithdrawFundInitialEvent()),
      child: WithdrawFundScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(context),
          body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 13.v,
            ),
            child: Column(
              children: [
                _buildAvailableCoins(context),
                SizedBox(height: 45.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 90.h,
                    right: 85.h,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          right: 2.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 10.v,
                              width: 22.h,
                              margin: EdgeInsets.only(top: 15.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 12.v,
                              width: 28.h,
                              margin: EdgeInsets.only(bottom: 12.v),
                            ),
                            Container(
                              height: 12.v,
                              width: 28.h,
                              margin: EdgeInsets.only(
                                top: 4.v,
                                bottom: 7.v,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 12.v,
                                    width: 28.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 12.v,
                                    width: 28.h,
                                    alignment: Alignment.center,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 37.v,
                            width: 47.h,
                            margin: EdgeInsets.only(top: 15.v),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 24.v,
                                    width: 29.h,
                                    margin: EdgeInsets.only(left: 7.h),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgSettings,
                                          height: 24.v,
                                          width: 29.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin: EdgeInsets.only(top: 2.v),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCloseAmber400,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize,
                                                    child: Stack(
                                                      alignment: Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgCloseAmber400,
                                                          height: 16.adaptSize,
                                                          width: 16.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                            height: 16.adaptSize,
                                                            width: 16.adaptSize,
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgCloseAmber400,
                                                                  height: 16
                                                                      .adaptSize,
                                                                  width: 16
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                    height: 16
                                                                        .adaptSize,
                                                                    width: 16
                                                                        .adaptSize,
                                                                    child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgCloseAmber400,
                                                                          height:
                                                                              16.adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                16.adaptSize,
                                                                            width:
                                                                                16.adaptSize,
                                                                            child:
                                                                                Stack(
                                                                              alignment:
                                                                                  Alignment.center,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgCloseAmber400,
                                                                                  height: 16.adaptSize,
                                                                                  width: 16.adaptSize,
                                                                                  alignment: Alignment.center,
                                                                                ),
                                                                                Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: SizedBox(
                                                                                    height: 16.adaptSize,
                                                                                    width: 16.adaptSize,
                                                                                    child: Stack(
                                                                                      alignment: Alignment.center,
                                                                                      children: [
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgCloseAmber400,
                                                                                          height: 16.adaptSize,
                                                                                          width: 16.adaptSize,
                                                                                          alignment: Alignment.center,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgCloseAmber400,
                                                                                          height: 16.adaptSize,
                                                                                          width: 16.adaptSize,
                                                                                          alignment: Alignment.center,
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFolder,
                                  height: 35.v,
                                  width: 44.h,
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: 35.v,
                                    width: 44.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgGrid,
                                          height: 35.v,
                                          width: 44.h,
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFolderPrimarycontainer,
                                          height: 32.v,
                                          width: 42.h,
                                          alignment: Alignment.center,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 9.v,
                                  width: 14.h,
                                  alignment: Alignment.centerRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgTelevisionOnsecondarycontainer,
                                  height: 9.v,
                                  width: 11.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 3.h,
                                    bottom: 12.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 7.v,
                                    width: 14.h,
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgTelevisionBlueGray500,
                                          height: 7.v,
                                          width: 14.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 2.h,
                                              right: 5.h,
                                            ),
                                            decoration: AppDecoration.fillGray500
                                                .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle.circleBorder3,
                                            ),
                                            child: Container(
                                              height: 5.adaptSize,
                                              width: 5.adaptSize,
                                              decoration: BoxDecoration(
                                                color: appTheme.blue100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  2.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 52.v,
                            width: 57.h,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 54.v),
                _buildWithdrawCoins(context),
                SizedBox(height: 15.v),
                _buildAmount(context),
                SizedBox(height: 7.v),
                Container(
                  width: 311.h,
                  margin: EdgeInsets.only(right: 6.h,left:15.v),
                  child: Text(
                    "Funds can be withdrawn only once every 24 hours, with a maximum limit of Rs. 1 lakh via IMPS.".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray600.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
          bottomNavigationBar: _buildWithdraw(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: Icon(
        Icons.arrow_back_ios_new,
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Withdraw Fund".tr,
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
  Widget _buildAvailableCoins(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "Available Coins".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCoin,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
            ),
            child: Text(
              "10,000".tr,
              style: theme.textTheme.titleLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWithdrawCoins(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Withdraw Coins".tr,
          style: theme.textTheme.bodySmall,
        ),
        Container(
          width: 320,
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
          decoration: ShapeDecoration(
            color: Color(0xFFE9E9F2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFishCoinIcon,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Amount".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 9.v),
        Container(
          height:45,
          width: 320,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  '₹',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  bottom: 2.v,
                ),
                child: Text(
                  '100',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                )
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildWithdraw(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 40,left: 10,right: 10),
    child: Container(
          width: 300,
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 18),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF080450),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Withdraw Request',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              ),
            ],
          ),
        ),
  );
  }
}

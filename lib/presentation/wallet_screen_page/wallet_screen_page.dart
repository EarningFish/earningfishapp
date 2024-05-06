import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../add_fund_screen_page/add_fund_screen_page.dart';
import '../withdraw_fund_screen/withdraw_fund_screen.dart';
import 'bloc/wallet_screen_bloc.dart';
import 'models/listaddfundtext_item_model.dart';
import 'models/transaction_item_model.dart';
import 'models/wallet_screen_model.dart';
import 'widgets/listaddfundtext_item_widget.dart';
import 'widgets/transaction_item_widget.dart';

class WalletScreenPage extends StatelessWidget {
  const WalletScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletScreenBloc>(
      create: (context) => WalletScreenBloc(WalletScreenState(
        walletScreenModelObj: WalletScreenModel(),
      ))
        ..add(WalletScreenInitialEvent()),
      child: WalletScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildLeftArrow(context),
              SizedBox(height: 28.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        _buildListaddfundtext(context),
                        SizedBox(height: 28.v),
                        _buildRowtransactions(context),
                        SizedBox(height: 26.v),
                        _buildTransaction(context),
                        // SizedBox(height: 104.v),
                        // _buildRowtrainticket(context),
                        // // SizedBox(height: 16.v),
                        // // Opacity(
                        // //   opacity: 0.1,
                        // //   child: Divider(),
                        // // ),
                        // SizedBox(height: 160.v),
                        // _buildRowtrainticket1(context),
                        // SizedBox(height: 16.v),
                        // // Opacity(
                        // //   opacity: 0.1,
                        // //   child: Divider(),
                        // // ),
                        // SizedBox(height: 232.v),
                        // _buildRowtrainticket2(context),
                        // SizedBox(height: 16.v),
                        // // Opacity(
                        // //   opacity: 0.1,
                        // //   child: Divider(),
                        // // ),
                        // SizedBox(height: 304.v),
                        // _buildRowtrainticket3(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeftArrow(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL26,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomAppBar(
              leadingWidth: 40.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgLeftArrowWhite,
                // margin: EdgeInsets.only(
                //   left: 10.h,
                //   bottom: 2.v,
                // ),
              ),
              centerTitle: true,
              title: AppbarTitleWhite(
                text: "Wallet".tr,
              ),
              actions: [
                Container(
                  height: 27.v,
                  width: 34.h,
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  decoration: AppDecoration.shadow.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder17,
                    color: Color(0x19080450),
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgNotification_1,
                        height: 23.v,
                        width: 24.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(bottom: 4.v),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.fromLTRB(14.h, 4.v, 6.h, 18.v),
                          decoration: BoxDecoration(
                            color: appTheme.red600,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Text(
            "Your Available Coins".tr,
            style: CustomTextStyles.bodySmallWhiteA70012,
          ),
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.58,
                      top: 0.60,
                      child: Container(
                        width: 35.82,
                        height: 50.80,
                        child: Stack(
                          children: [
                            // First Image
                            Positioned(
                              left: 0,
                              top: 0,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFishCoin,
                                // height: 30.adaptSize,
                                // width: 30.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 15.v,
                                  bottom: 11.v,
                                ),
                              ),
                            ),
                            // Second Image
                            Positioned(
                              left: 10, // Adjust position as needed
                              bottom: 10, // Adjust position as needed
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFishCoin2,
                                // height: 30.adaptSize,
                                // width: 30.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 5.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "12,300".tr,
                  style: theme.textTheme.displayMedium?.copyWith(
                    color: Colors.white, // Set your desired text color
                    fontSize: 40, // Set your desired font size
                  ),
                ),

              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Wallet Id:".tr,
                style: CustomTextStyles.labelLargeWhiteA700,
              ),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "5434215489".tr,
                    style: CustomTextStyles.bodySmallWhiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 1.h),
              )
            ],
          ),
          SizedBox(height: 14.v),
          Container(
            width: 276,
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.05999999865889549),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.50,
                  child: Text(
                    'Exchange Rate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '12,300',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                        ),
                      ),
                      const SizedBox(width: 5),
                      // const SizedBox(width: 5),
                      Text(
                        '=',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                        ),
                      ),
                      const SizedBox(width: 5),
                      // const SizedBox(width: 10),
                      Text(
                        '\$147.52',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildListaddfundtext(BuildContext context) {
  //   return SizedBox(
  //     height: 71.v,
  //     child:
  //         BlocSelector<WalletScreenBloc, WalletScreenState, WalletScreenModel?>(
  //       selector: (state) => state.walletScreenModelObj,
  //       builder: (context, walletScreenModelObj) {
  //         return ListView.separated(
  //           padding: EdgeInsets.only(left: 4.h),
  //           scrollDirection: Axis.horizontal,
  //           separatorBuilder: (context, index) {
  //             return SizedBox(
  //               width: 19.h,
  //             );
  //           },
  //           itemCount:
  //               walletScreenModelObj?.listaddfundtextItemList.length ?? 0,
  //           itemBuilder: (context, index) {
  //             ListaddfundtextItemModel model =
  //                 walletScreenModelObj?.listaddfundtextItemList[index] ??
  //                     ListaddfundtextItemModel();
  //             return ListaddfundtextItemWidget(
  //               model,
  //             );
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }
  Widget _buildListaddfundtext(BuildContext context) {
    return SizedBox(
      height: 71.v,
      child: BlocSelector<WalletScreenBloc, WalletScreenState, WalletScreenModel?>(
        selector: (state) => state.walletScreenModelObj,
        builder: (context, walletScreenModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 4.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 19.h,
              );
            },
            itemCount: walletScreenModelObj?.listaddfundtextItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListaddfundtextItemModel model =
                  walletScreenModelObj?.listaddfundtextItemList[index] ??
                      ListaddfundtextItemModel();
              return GestureDetector(
                onTap: () {
                  if (model.addFundText == "Withdraw") {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WithdrawFundScreen()));
                  }
                  else if (model.addFundText == "Add Fund") {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddFundScreenPage()));
                  }
                  },
                child: ListaddfundtextItemWidget(model),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowtransactions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Transactions',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0.08,
            ),
          ),

          CustomImageView(
            imagePath: ImageConstant.imgFilter,
            height: 20.adaptSize,
            width: 20.adaptSize,
          )
        ],
      ),
    );
  }
  /// Section Widget
  // Widget _buildTransaction(BuildContext context) {
  //   return BlocSelector<WalletScreenBloc, WalletScreenState,
  //       WalletScreenModel?>(
  //     selector: (state) => state.walletScreenModelObj,
  //     builder: (context, walletScreenModelObj) {
  //         return ListView.separated(
  //           physics: NeverScrollableScrollPhysics(),
  //           shrinkWrap: true,
  //           separatorBuilder: (context, index) {
  //             return SizedBox(
  //               height: 15.v,
  //             );
  //           },
  //           itemCount: walletScreenModelObj?.transactionItemList.length ?? 0,
  //           itemBuilder: (context, index) {
  //             TransactionItemModel model =
  //                 walletScreenModelObj?.transactionItemList[index] ??
  //                     TransactionItemModel();
  //             return TransactionItemWidget(
  //               model,
  //             );
  //           },
  //         );
  //     },
  //   );
  // }
  Widget _buildTransaction(BuildContext context) {
    return BlocSelector<WalletScreenBloc, WalletScreenState,
        WalletScreenModel?>(
      selector: (state) => state.walletScreenModelObj,
      builder: (context, walletScreenModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount: walletScreenModelObj?.transactionItemList.length ?? 0,
          itemBuilder: (context, index) {
            TransactionItemModel model =
                walletScreenModelObj?.transactionItemList[index] ??
                    TransactionItemModel();
            return Container(
                  color: Colors.white, // Set the background color to white
                  child: TransactionItemWidget(
                    model,
                  ),
                );
          },
        );
      },
    );
  }

  /// Navigates to the previous screen.
  onTapImgCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}

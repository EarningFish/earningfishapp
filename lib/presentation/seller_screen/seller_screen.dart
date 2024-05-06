import 'package:flutter/material.dart';
import 'package:guessme_s_application1/presentation/seller_screen_page/my_fish_screen_page.dart';
import '../../core/app_export.dart';
import 'bloc/no_fish_found_tab_container_bloc.dart';
import 'models/no_fish_found_tab_container_model.dart';

class SellerTabContainerPage extends StatefulWidget {
  const SellerTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  NoFishFoundTabContainerPageState createState() =>
      NoFishFoundTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoFishFoundTabContainerBloc>(
      create: (context) =>
          NoFishFoundTabContainerBloc(NoFishFoundTabContainerState(
        noFishFoundTabContainerModelObj: NoFishFoundTabContainerModel(),
      ))
            ..add(NoFishFoundTabContainerInitialEvent()),
      child: SellerTabContainerPage(),
    );
  }
}
class NoFishFoundTabContainerPageState
    extends State<SellerTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    // tabviewController = TabController(length: 3, vsync: this);
    tabviewController = TabController(length: 3, initialIndex: 2, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoFishFoundTabContainerBloc,
        NoFishFoundTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  _buildAvailableCoinRow(context),
                  SizedBox(height: 10.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 404.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        SellerScreenPage.builder(context),
                        SellerScreenPage.builder(context),
                        SellerScreenPage.builder(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAvailableCoinRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 3.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.customBorderBL26,
        ),
        child: Column(
          children: [
            SizedBox(height: 16.v),
            Container(
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width:340,
                    height: 36,
                    padding: EdgeInsets.fromLTRB(14.h, 8.v, 14.h, 7.v),
                    decoration: AppDecoration.outlineIndigo900.copyWith(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            'Available Coin for investing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          )
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFishCoinIcon,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 1.v,
                          ),
                          child: Text(
                            "10000".tr,
                            style: CustomTextStyles.labelLargeWhiteA700,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineIndigo9001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
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
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 4.v,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  'Overall P&L',
                                  style: TextStyle(
                                    color: Color(0xFF6F6F6F),
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  '+409',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0.04,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 78.80,
                          height: 25,
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Color(0x1931B77C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 5),
                              CustomImageView(
                                imagePath: ImageConstant.imgV,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '(2.07%)',
                                style: TextStyle(
                                  color: Color(0xFF31B77C),
                                  fontSize: 12,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 29.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                            color: Color(0xFF080450),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCurrentValue,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '15340',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Investment".tr,
                                style: theme.textTheme.bodySmall,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.h,),
                          child:Container(
                            width: 36,
                            height: 36,
                            padding: const EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                              color: Color(0xFF080450),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgInvestment,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '15749',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Current Value".tr,
                                style: theme.textTheme.bodySmall,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 31.v,
      width: 301.h,
      // margin: EdgeInsets.only(right: 19.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.indigo900,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: appTheme.indigo900,
        dividerColor: Colors.transparent,

        tabs: [
          Tab(
            child: Text(
              "Fish Store".tr,
            ),
          ),
          Tab(
            child: Text(
              "My Fish".tr,
            ),
          ),
          Tab(
            child: Text(
              "Seller".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapImgClosethree(BuildContext context) {
    NavigatorService.goBack();
  }
}

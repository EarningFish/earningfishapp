import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/play_screen_bloc.dart';
import 'models/play_screen_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PlayScreenPage extends StatelessWidget {
  const PlayScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PlayScreenBloc>(
      create: (context) => PlayScreenBloc(PlayScreenState(
        playScreenModelObj: PlayScreenModel(),
      ))
        ..add(PlayScreenInitialEvent()),
      child: PlayScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<PlayScreenBloc, PlayScreenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            // backgroundColor: appTheme.bgColor,
            body: SizedBox(
              // height: 900.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVideo,
                    width: 360.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 650.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // _buildGuideTour(context),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: SizeUtils.height,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup35,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: SizeUtils.height,
                                          width: double.maxFinite,
                                          // decoration: BoxDecoration(
                                          //   image: DecorationImage(
                                          //     image: AssetImage(
                                          //       ImageConstant.imgGroup33,
                                          //     ),
                                          //     fit: BoxFit.cover,
                                          //   ),
                                          // ),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Opacity(
                                                opacity: 0.2,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle,
                                                  height: 900.v,
                                                  // width: 360.h,
                                                  alignment:
                                                      Alignment.topCenter,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                  // height: 598.v,
                                                  width: double.maxFinite,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Opacity(
                                                        opacity: 0.2,
                                                        child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgAsset2288x81,
                                                          // height: 316.v,
                                                          // width: 360.h,
                                                          alignment: Alignment
                                                              .topCenter,
                                                        ),
                                                      ),
                                                      _buildStackAsset(context)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      _buildStackasset2288x(context)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
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
  Widget _buildStackAsset(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        // height: 800.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: ImageConstant.imgAsset2288x83,
                // height: 316.v,
                // width: 360.h,
                alignment: Alignment.center,
              ),
            ),
            // CustomImageView(
            //   imagePath: ImageConstant.imgGroup9477,
            //   // height: 133.v,
            //   // width: 360.h,
            //   // alignment: Alignment.bottomCenter,
            //   // margin: EdgeInsets.only(bottom: 56.v),
            // )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackasset2288x(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        // height: 283.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Opacity(
              opacity: 0.3,
              child: CustomImageView(
                imagePath: ImageConstant.imgAsset2288x82,
                // height: 283.v,
                // width: 360.h,
                alignment: Alignment.center,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 20.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 33.v,
                            width: 137.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 19.v,
                                    width: 136.h,
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                          ImageConstant.imgRectangle1424,
                                          height: 19.v,
                                          width: 136.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 46.h,
                                              bottom: 2.v,
                                            ),
                                            decoration:
                                            AppDecoration.outlineBlack,
                                            child: Text(
                                              "3".tr,
                                              style: CustomTextStyles
                                                  .labelLargeWhiteA700Bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 134.h,
                                    margin: EdgeInsets.only(left: 3.h),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 1.h,
                                            vertical: 7.v,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16,
                                          ),
                                          child: Container(
                                            height: 19.v,
                                            width: 30.h,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  ImageConstant.imgImage15,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgGroup9459,
                                          height: 26.v,
                                          width: 29.h,
                                          margin: EdgeInsets.only(top: 5.v),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          Container(
                            height: 24.v,
                            width: 119.h,
                            margin: EdgeInsets.only(
                              top: 5.v,
                              bottom: 3.v,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 19.v,
                                    width: 115.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle1423,
                                          height: 19.v,
                                          width: 115.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(bottom: 2.v),
                                            decoration:
                                                AppDecoration.outlineBlack,
                                            child: Text(
                                              "1000".tr,
                                              style: CustomTextStyles
                                                  .labelLargeWhiteA700Bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    // decoration: AppDecoration.fillRed.copyWith(
                                    //   borderRadius:
                                    //       BorderRadiusStyle.roundedBorder12,
                                    // ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgCoin,
                                      height: 23.adaptSize,
                                      width: 23.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 94.v,
                            width: 87.h,
                            margin: EdgeInsets.only(top: 20.v),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                // Align(
                                //   alignment: Alignment.topLeft,
                                //    Container(
                                //     margin: EdgeInsets.only(
                                //       left: 25.h,
                                //       top: 1.v,
                                //     ),
                                //     decoration: AppDecoration.outlineBlack900,
                                //     child: Padding(
                                //       padding: const EdgeInsets.only(right:30.0),
                                //       child: Text(
                                //         "Total".tr,
                                //         style: theme.textTheme.bodyMedium,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // Align(
                                //   alignment: Alignment.topLeft,
                                //   child: Container(
                                //     margin: EdgeInsets.only(left: 35.h),
                                //     decoration: AppDecoration.outlineBlack900,
                                //     child: Text(
                                //       "o".tr,
                                //       style: theme.textTheme.bodyMedium,
                                //     ),
                                //   ),
                                // ),
                                // Align(
                                //   alignment: Alignment.topRight,
                                //   child: Container(
                                //     margin: EdgeInsets.only(right: 30.h),
                                //     decoration: AppDecoration.outlineBlack900,
                                //     child: Text(
                                //       "t".tr,
                                //       style: theme.textTheme.bodyMedium,
                                //     ),
                                //   ),
                                // ),
                                // Align(
                                //   alignment: Alignment.topRight,
                                //   child: Container(
                                //     margin: EdgeInsets.only(right: 30.h),
                                //     decoration: AppDecoration.outlineBlack900,
                                //     child: Text(
                                //       "a".tr,
                                //       style: theme.textTheme.bodyMedium,
                                //     ),
                                //   ),
                                // ),
                                // Align(
                                //   alignment: Alignment.topRight,
                                //   child: Container(
                                //     margin: EdgeInsets.only(right: 30.h),
                                //     decoration: AppDecoration.outlineBlack900,
                                //     child: Text(
                                //       "l".tr,
                                //       style: theme.textTheme.bodyMedium,
                                //     ),
                                //   ),
                                // ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 91.v,
                                    width: 87.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 80.adaptSize,
                                            width: 80.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle80x80,
                                                  height: 80.adaptSize,
                                                  width: 80.adaptSize,
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle54x79,
                                                  height: 54.v,
                                                  width: 79.h,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 91.v,
                                            width: 87.h,
                                            child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                // Align(
                                                //   alignment:
                                                //       Alignment.bottomRight,
                                                //   child: Container(
                                                //     height: 34.v,
                                                //     width: 42.h,
                                                //     margin: EdgeInsets.only(
                                                //       right: 3.h,
                                                //       bottom: 1.v,
                                                //     ),
                                                //     padding:
                                                //         EdgeInsets.symmetric(
                                                //       horizontal: 1.h,
                                                //       vertical: 5.v,
                                                //     ),
                                                //     decoration: BoxDecoration(
                                                //       image: DecorationImage(
                                                //         image: AssetImage(
                                                //           ImageConstant
                                                //               .imgGroup3,
                                                //         ),
                                                //         fit: BoxFit.cover,
                                                //       ),
                                                //     ),
                                                //     child: CustomImageView(
                                                //       imagePath: ImageConstant
                                                //           .imgRectangle5x7,
                                                //       height: 5.v,
                                                //       width: 7.h,
                                                //       alignment:
                                                //           Alignment.bottomLeft,
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topLeft,
                                                //   child: Container(
                                                //     height: 38.adaptSize,
                                                //     width: 38.adaptSize,
                                                //     margin: EdgeInsets.only(
                                                //         top: 4.v),
                                                //     decoration: BoxDecoration(
                                                //       image: DecorationImage(
                                                //         image: AssetImage(
                                                //           ImageConstant
                                                //               .imgRectangle38x38,
                                                //         ),
                                                //         fit: BoxFit.cover,
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                                // CustomImageView(
                                                //   imagePath: ImageConstant
                                                //       .imgRectangle9x9,
                                                //   height: 9.adaptSize,
                                                //   width: 9.adaptSize,
                                                //   alignment:
                                                //       Alignment.bottomCenter,
                                                //   margin: EdgeInsets.only(
                                                //       bottom: 8.v),
                                                // ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgClipPathGroup,
                                                  height: 80.adaptSize,
                                                  width: 80.adaptSize,
                                                  alignment: Alignment.center,
                                                ),
                                                // Align(
                                                //   alignment: Alignment.topRight,
                                                //   child: Container(
                                                //     height: 1.adaptSize,
                                                //     width: 1.adaptSize,
                                                //     margin: EdgeInsets.only(
                                                //       top: 39.v,
                                                //       right: 9.h,
                                                //     ),
                                                //     decoration: BoxDecoration(
                                                //       image: DecorationImage(
                                                //         image: AssetImage(
                                                //           ImageConstant
                                                //               .imgRectangle1x1,
                                                //         ),
                                                //         fit: BoxFit.cover,
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                                // CustomImageView(
                                                //   imagePath:
                                                //       ImageConstant.imgPath,
                                                //   height: 39.v,
                                                //   width: 57.h,
                                                //   alignment: Alignment.topRight,
                                                //   margin: EdgeInsets.only(
                                                //       right: 11.h),
                                                // ),
                                                // CustomImageView(
                                                //   imagePath: ImageConstant
                                                //       .imgLinkedVector,
                                                //   height: 87.adaptSize,
                                                //   width: 87.adaptSize,
                                                //   alignment: Alignment.center,
                                                // ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 25.h,
                                                      vertical: 14.v,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup14,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCoin,
                                                          height: 17.adaptSize,
                                                          width: 17.adaptSize,
                                                          onTap: () {
                                                            onTapImgClosethree(
                                                                context);
                                                          },
                                                        ),
                                                        SizedBox(height: 3.v),
                                                        Container(
                                                          decoration: AppDecoration
                                                              .outlineBlack9001,
                                                          child: Text(
                                                            "345".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall,
                                                          ),
                                                        ),
                                                        SizedBox(height: 9.v)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                // CustomImageView(
                                                //   imagePath: ImageConstant
                                                //       .imgRectangle7x10,
                                                //   height: 7.v,
                                                //   width: 10.h,
                                                //   alignment: Alignment.topLeft,
                                                //   margin: EdgeInsets.only(
                                                //     left: 30.h,
                                                //     top: 5.v,
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topRight,
                                                //   child: Padding(
                                                //     padding: EdgeInsets.only(
                                                //       top: 9.v,
                                                //       right: 15.h,
                                                //     ),
                                                //     child: Row(
                                                //       mainAxisAlignment:
                                                //           MainAxisAlignment.end,
                                                //       mainAxisSize:
                                                //           MainAxisSize.min,
                                                //       children: [
                                                //         Container(
                                                //           height: 1.adaptSize,
                                                //           width: 1.adaptSize,
                                                //           margin: EdgeInsets
                                                //               .symmetric(
                                                //                   vertical:
                                                //                       1.v),
                                                //           decoration:
                                                //               BoxDecoration(
                                                //             image:
                                                //                 DecorationImage(
                                                //               image: AssetImage(
                                                //                 ImageConstant
                                                //                     .imgRectangle1,
                                                //               ),
                                                //               fit: BoxFit.cover,
                                                //             ),
                                                //           ),
                                                //         ),
                                                //         // Container(
                                                //         //   margin:
                                                //         //       EdgeInsets.only(
                                                //         //           left: 12.h),
                                                //         //   decoration: AppDecoration
                                                //         //       .outlineBlack900,
                                                //         //   child: Text(
                                                //         //     "lbl_l".tr,
                                                //         //     style: theme
                                                //         //         .textTheme
                                                //         //         .bodyMedium,
                                                //         //   ),
                                                //         // )
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topLeft,
                                                //   child: Container(
                                                //     margin: EdgeInsets.only(
                                                //       left: 3.h,
                                                //       top: 14.v,
                                                //     ),
                                                //     decoration: AppDecoration
                                                //         .outlineBlack900,
                                                //     child: Text(
                                                //       "lbl_t".tr,
                                                //       style: theme
                                                //           .textTheme.bodyMedium,
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topLeft,
                                                //   child: Container(
                                                //     margin: EdgeInsets.only(
                                                //       left: 9.h,
                                                //       top: 6.v,
                                                //     ),
                                                //     decoration: AppDecoration
                                                //         .outlineBlack900,
                                                //     child: Text(
                                                //       "lbl_o".tr,
                                                //       style: theme
                                                //           .textTheme.bodyMedium,
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topLeft,
                                                //   child: Container(
                                                //     margin: EdgeInsets.only(
                                                //       left: 17.h,
                                                //       top: 1.v,
                                                //     ),
                                                //     decoration: AppDecoration
                                                //         .outlineBlack900,
                                                //     child: Text(
                                                //       "lbl_t2".tr,
                                                //       style: theme
                                                //           .textTheme.bodyMedium,
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topRight,
                                                //   child: Container(
                                                //     margin: EdgeInsets.only(
                                                //       top: 6.v,
                                                //       right: 20.h,
                                                //     ),
                                                //     decoration: AppDecoration
                                                //         .outlineBlack900,
                                                //     child: Text(
                                                //       "lbl_a".tr,
                                                //       style: theme
                                                //           .textTheme.bodyMedium,
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topRight,
                                                //   child: Container(
                                                //     margin: EdgeInsets.only(
                                                //       top: 13.v,
                                                //       right: 7.h,
                                                //     ),
                                                //     decoration: AppDecoration
                                                //         .outlineBlack900,
                                                //     child: Text(
                                                //       "lbl_u".tr,
                                                //       style: theme
                                                //           .textTheme.bodyMedium,
                                                //     ),
                                                //   ),
                                                // ),
                                                // Align(
                                                //   alignment: Alignment.topRight,
                                                //   child: Container(
                                                //     margin: EdgeInsets.only(
                                                //       top: 19.v,
                                                //       right: 1.h,
                                                //     ),
                                                //     decoration: AppDecoration
                                                //         .outlineBlack900,
                                                //     child: Text(
                                                //       "lbl_e".tr,
                                                //       style: theme
                                                //           .textTheme.bodyMedium,
                                                //     ),
                                                //   ),
                                                // )
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
                          Padding(
                            padding: EdgeInsets.only(bottom: 40.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 33.v,
                                  width: 46.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.h,
                                    vertical: 9.v,
                                  ),
                                  decoration: AppDecoration.blur.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL16,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup,
                                    height: 15.v,
                                    width: 14.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                CustomElevatedButton(
                                  height: 33.v,
                                  width: 112.h,
                                  text: "Auto feed".tr,
                                  leftIcon: Container(
                                    margin: EdgeInsets.only(right: 4.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgFrame40525,
                                      height: 13.v,
                                      width: 20.h,
                                    ),
                                  ),
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  buttonTextStyle:
                                      CustomTextStyles.labelLargeWhiteA700Bold,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
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

  /// Navigates to the previous screen.
  onTapImgClosethree(BuildContext context) {
    NavigatorService.goBack();
  }
}

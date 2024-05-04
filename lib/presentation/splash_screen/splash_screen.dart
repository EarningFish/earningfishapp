import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(2.79, -1.27),
                  end: Alignment(0, 0.97),
                  colors: [appTheme.blue40001, theme.colorScheme.primary],
                ),
              ),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 24.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildStackuserNine(
                                context,
                                userImage1: ImageConstant.imgUser,
                              ),
                              SizedBox(height: 4.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue400,
                                height: 4.v,
                                width: 10.h,
                                alignment: Alignment.centerRight,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue400043x3,
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(left: 2.h),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50.v,
                          width: 79.h,
                          margin: EdgeInsets.only(left: 3.h),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueGray40002,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 29.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueGray40004,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 31.h),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 40.v,
                                  width: 75.h,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgSettings,
                                        height: 40.v,
                                        width: 75.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 17.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 2.h),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorBlack9004x5,
                                                      height: 4.v,
                                                      width: 5.h,
                                                      margin: EdgeInsets.only(
                                                          top: 5.v),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgUserBlack900,
                                                      height: 7.adaptSize,
                                                      width: 7.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 3.h,
                                                        bottom: 2.v,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgUserBlack9007x6,
                                                      height: 7.v,
                                                      width: 6.h,
                                                      margin: EdgeInsets.only(
                                                        left: 2.h,
                                                        bottom: 2.v,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVector4x5,
                                                      height: 4.v,
                                                      width: 5.h,
                                                      margin: EdgeInsets.only(
                                                        left: 2.h,
                                                        top: 5.v,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 4.v),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 3.v,
                                                      bottom: 7.v,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorGray50003,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorGray50003,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment: Alignment
                                                              .centerRight,
                                                        ),
                                                        SizedBox(height: 5.v),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorBlueGray40003,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 5.h,
                                                      bottom: 2.v,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorLightGreen50,
                                                          height: 1.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 4.h),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorBlue40003,
                                                          height: 1.v,
                                                          width: 3.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 4.h),
                                                        ),
                                                        SizedBox(
                                                          height: 14.v,
                                                          width: 15.h,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgSettingsBlueA200,
                                                                height: 11.v,
                                                                width: 10.h,
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 1
                                                                            .h),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgContrast,
                                                                height: 9.v,
                                                                width: 6.h,
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 1.h,
                                                                  bottom: 1.v,
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlue700,
                                                                height: 3.v,
                                                                width: 5.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: 1.v,
                                                                  right: 4.h,
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlue300,
                                                                height: 1.v,
                                                                width: 6.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorGray10001,
                                                                height:
                                                                    3.adaptSize,
                                                                width:
                                                                    3.adaptSize,
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 3
                                                                            .h),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorIndigo40003,
                                                                height: 1.v,
                                                                width: 3.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 2
                                                                            .h),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorOnprimary,
                                                                height: 1.v,
                                                                width: 3.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 1
                                                                            .v),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorPrimarycontainer,
                                                                height:
                                                                    1.adaptSize,
                                                                width:
                                                                    1.adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .v),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlue30001,
                                                                height: 1.v,
                                                                width: 2.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 2
                                                                            .v),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorTeal200,
                                                                height:
                                                                    1.adaptSize,
                                                                width:
                                                                    1.adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 1
                                                                            .v),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorLightBlue900,
                                                                height:
                                                                    1.adaptSize,
                                                                width:
                                                                    1.adaptSize,
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 5
                                                                            .h),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorLightBlue9001x1,
                                                                height:
                                                                    1.adaptSize,
                                                                width:
                                                                    1.adaptSize,
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 4.h,
                                                                  bottom: 1.v,
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgSettingsLightBlue50,
                                                                height: 6.v,
                                                                width: 7.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: 1.v,
                                                                  right: 2.h,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2.h),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 22.h,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlack900,
                                                                height:
                                                                    2.adaptSize,
                                                                width:
                                                                    2.adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 6
                                                                            .v),
                                                              ),
                                                              SizedBox(
                                                                height: 9.v,
                                                                width: 6.h,
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgUserBlue500,
                                                                      height:
                                                                          8.v,
                                                                      width:
                                                                          6.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVectorGray5001,
                                                                      height:
                                                                          6.v,
                                                                      width:
                                                                          5.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 10.v),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorBlueGray40005,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorBlueGray400,
                                                    height: 1.adaptSize,
                                                    width: 1.adaptSize,
                                                    margin: EdgeInsets.only(
                                                      left: 11.h,
                                                      top: 15.v,
                                                      bottom: 2.v,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorGray50002,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin:
                                                    EdgeInsets.only(right: 5.h),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 9.v,
                                  width: 38.h,
                                  margin: EdgeInsets.only(bottom: 4.v),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 9.v,
                                        width: 38.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 19.h,
                                            right: 4.h,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorIndigo70001,
                                                height: 1.v,
                                                width: 2.h,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorIndigo700011x1,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 3.h),
                                              ),
                                              SizedBox(height: 4.v),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlueGray600,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlueGray600,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment:
                                                    Alignment.centerRight,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 7.v,
                                  width: 37.h,
                                  margin: EdgeInsets.only(right: 4.h),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorBlue40004,
                                        height: 7.v,
                                        width: 37.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 29.h,bottom: 8.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlueGray500,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlueGray5001x1,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                              ),
                                              SizedBox(height: 3.v),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorIndigo40002,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 1.h),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorIndigo400021x1,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorIndigo40002,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorIndigo400021x4,
                                                height: 1.v,
                                                width: 4.h,
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
                                imagePath: ImageConstant.imgVectorBlue40002,
                                height: 6.v,
                                width: 29.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 1.h),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 12.v,
                                  width: 15.h,
                                  margin: EdgeInsets.only(
                                    left: 3.h,
                                    top: 17.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMaximize,
                                        height: 12.v,
                                        width: 15.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            right: 2.h,
                                            bottom: 1.v,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorOnprimarycontainer,
                                                height: 2.adaptSize,
                                                width: 2.adaptSize,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorGray500,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                margin:
                                                    EdgeInsets.only(right: 4.h),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorGray5001x1,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                margin:
                                                    EdgeInsets.only(right: 4.h),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlueGray40001,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment: Alignment.centerLeft,
                                              ),
                                              SizedBox(height: 2.v),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorGray50004,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment: Alignment.centerLeft,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 10.v,
                                  width: 9.h,
                                  margin: EdgeInsets.only(
                                    left: 8.h,
                                    bottom: 12.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgThumbsUp,
                                        height: 10.v,
                                        width: 9.h,
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorBlue40001,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                          left: 2.h,
                                          top: 1.v,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue400044x17,
                                height: 4.v,
                                width: 17.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 32.h,
                                    right: 32.h,
                                    bottom: 8.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorBlue400044x17,
                                        height: 4.v,
                                        width: 13.h,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray50001,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      SizedBox(height: 4.v),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray50001,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize,
                                        margin: EdgeInsets.only(left: 2.h),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorIndigo90002,
                                height: 11.v,
                                width: 4.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 8.h,
                                  bottom: 10.v,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 7.h),
                                  child: SizedBox(
                                    height: 25.v,
                                    child: VerticalDivider(
                                      width: 4.h,
                                      thickness: 4.v,
                                      endIndent: 10.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue40005,
                                height: 12.v,
                                width: 8.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 8.h,
                                  bottom: 12.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue900,
                                height: 6.v,
                                width: 5.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 13.h,
                                  bottom: 11.v,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 6.v,
                                  width: 4.h,
                                  margin: EdgeInsets.only(
                                    right: 12.h,
                                    bottom: 11.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorBlue50001,
                                        height: 6.v,
                                        width: 4.h,
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorBlue9001x1,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize,
                                        alignment: Alignment.topLeft,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 19.v,
                                    right: 15.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorLightBlue90001,
                                        height: 7.v,
                                        width: 4.h,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorOnprimarycontainer2x2,
                                        height: 2.adaptSize,
                                        width: 2.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 3.v,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    bottom: 16.v,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray300,
                                        height: 6.v,
                                        width: 2.h,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray3001x1,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize,
                                        margin: EdgeInsets.only(bottom: 5.v),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue400019x3,
                                height: 9.v,
                                width: 3.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 7.h,
                                  bottom: 12.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorIndigo40001,
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 12.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorIndigo400,
                                height: 4.v,
                                width: 5.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  bottom: 14.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue70002,
                                height: 3.v,
                                width: 4.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  bottom: 16.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorLightBlue9003x3,
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  bottom: 21.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorIndigo70002,
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  bottom: 12.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorIndigo700,
                                height: 1.v,
                                width: 4.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 15.h,
                                  bottom: 19.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue70001,
                                height: 2.adaptSize,
                                width: 2.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  bottom: 18.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorBlueGray6001x3,
                                height: 1.v,
                                width: 3.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 34.h,
                                  bottom: 4.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorIndigo400021x4,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 36.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorGray500011x1,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 32.h,
                                  bottom: 12.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorIndigo400021x1,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.bottomCenter,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueGray40006,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 33.h,
                                  bottom: 9.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorGray50002,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 4.h,
                                  bottom: 10.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorGray700,
                                height: 2.adaptSize,
                                width: 2.adaptSize,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 5.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorCyan50,
                                height: 1.adaptSize,
                                width: 1.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  top: 22.v,
                                  right: 15.h,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 24.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildStackuserNine(
                                context,
                                userImage1:
                                    ImageConstant.imgUserOnprimarycontainer,
                              ),
                              SizedBox(height: 4.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlue400024x18,
                                height: 4.v,
                                width: 18.h,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      "lbl_earning_fish".tr.toUpperCase(),
                      style: CustomTextStyles.titleMediumNunito,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildStackuserNine(
    BuildContext context, {
    required String userImage1,
  }) {
    return SizedBox(
      height: 14.adaptSize,
      width: 14.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userImage1,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlack900,
            height: 2.v,
            width: 3.h,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}

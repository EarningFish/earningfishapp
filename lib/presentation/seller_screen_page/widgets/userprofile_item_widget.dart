import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/userprofile_item_model.dart';

class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
        color: Colors.white
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: userprofileItemModelObj.nextFeedTimeIma!,
                height: 34.v,
                width: 71.h,
                margin: EdgeInsets.symmetric(vertical: 9.v),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 180.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            userprofileItemModelObj.nextFeedTimeTex!,
                            style: CustomTextStyles.bodySmallIndigo900,
                          ),
                        ),
                        Text(
                          userprofileItemModelObj.nextFeedTimeVal!,
                          style: theme.textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame39961,
                    height: 6.v,
                    width: 180.h,
                    radius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  SizedBox(
                    width: 180.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            userprofileItemModelObj.stepText!,
                            style: CustomTextStyles.bodySmallIndigo900,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "level:09".tr,
                                style: CustomTextStyles.labelLargeBluegray900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Text(
                      'Nemo Fish',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0.08,
                      ),
                    )
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 100,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E9F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Value  ',
                                style: TextStyle(
                                  color: Color(0xFFA6A6A6),
                                  fontSize: 10,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.13,
                                ),
                              ),
                              TextSpan(
                                text: '1000',
                                style: TextStyle(
                                  color: Color(0xFF080450),
                                  fontSize: 10,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          width: 10,
                          height: 10,
                          padding: const EdgeInsets.only(
                            top: 0.20,
                            left: 0.19,
                            right: 0.20,
                            bottom: 0.20,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 9.61,
                                height: 9.60,
                                child: Stack(children: [
                                    CustomImageView(
                                          imagePath: ImageConstant.imgFishCoinIcon,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                        ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 30.v,
                      width: 70.h,
                      text: "Buy".tr,
                      buttonStyle: CustomButtonStyles.fillIndigoTL6,
                      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700Bold,
                    ),
                    // CustomElevatedButton(
                    //   height: 30.v,
                    //   width: 61.h,
                    //   text: "cancel".tr,
                    //   margin: EdgeInsets.only(left: 5.h),
                    //   buttonStyle: CustomButtonStyles.fillIndigoTL61,
                    //   buttonTextStyle: CustomTextStyles.labelLargeIndigo900Bold,
                    // )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

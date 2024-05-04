import 'package:flutter/material.dart';
import 'package:guessme_s_application1/theme/color.dart';
import '../../../core/app_export.dart';
import '../models/userprofile_item_model.dart';

class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj,
      {Key? key, this.onTapTxtEdit})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  VoidCallback? onTapTxtEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.v,
            width: 292.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUserTag1,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 19.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 12.v,
                            bottom: 14.v,
                          ),
                          child: Text(
                            userprofileItemModelObj.email!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Spacer(),
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgBinBold,
                        //   height: 13.adaptSize,
                        //   width: 13.adaptSize,
                        //   margin: EdgeInsets.only(
                        //     top: 5.v,
                        //     right: 7.h,
                        //     bottom: 25.v,
                        //   ),
                        // )
                        Container(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: appTheme.indigo50,
                          ),
                          child: Center(
                            child: ClipOval(
                              child: CustomImageView(
                                imagePath: ImageConstant.imgBinBold,
                                height: 13.adaptSize,
                                width: 13.adaptSize,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 14.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(
                          flex: 22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.v),
                          child: Text(
                            userprofileItemModelObj.nutanjadav!,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Spacer(
                          flex: 77,
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapTxtEdit?.call();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              bottom: 7.v,
                              right: 50.v
                            ),
                            child: Text(
                              userprofileItemModelObj.edit!,
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ),
                        ),
                        // Container(
                        //   height: 27.adaptSize,
                        //   width: 27.adaptSize,
                        //   margin: EdgeInsets.only(
                        //     left: 16.h,
                        //     top: 5.v,
                        //     bottom: 3.v,
                        //   ),
                        //   decoration: BoxDecoration(
                        //     color: appTheme.indigo50,
                        //     borderRadius: BorderRadius.circular(
                        //       13.h,
                        //     ),
                        //   ),
                        //   child:CustomImageView(
                        //     imagePath: ImageConstant.imgBinBold,
                        //     height: 13.adaptSize,
                        //     width: 13.adaptSize,
                        //     margin: EdgeInsets.only(
                        //       top: 5.v,
                        //       right: 7.h,
                        //       bottom: 25.v,
                        //     ),
                        //   ) ,
                        // )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofileItemModelObj.phonenumber!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    userprofileItemModelObj.bod04061999!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    userprofileItemModelObj.weight!,
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
              // CustomOutlinedButton(
              //   width: 53.h,
              //   text: "40%".tr,
              //   margin: EdgeInsets.symmetric(vertical: 16.v),
              //   buttonTextStyle: CustomTextStyles.bodySmallPrimary,
              // )
              OutlinedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(AppColors.whiteColor), // Button background color
                  side: MaterialStateProperty.all<BorderSide>(BorderSide(color: AppColors.greyColorShadeFaint)), // Button border
                ),
                child: Text('40%'),
              )

            ],
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }
}

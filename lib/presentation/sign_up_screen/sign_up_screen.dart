import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(), // Prevent scrolling
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLogo,
                    width: 150,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 200), // Adding space between logo and card
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  // color: appTheme.indigo900.withOpacity(0.37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder341,
                  ),
                  child: Container(
                    height: 500.v,
                    width: double.maxFinite,
                    decoration: AppDecoration.fillIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder341,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgEllipse1349,
                        //   height: 300.v,
                        //   width: 360.h,
                        //   alignment: Alignment.bottomCenter,
                        // ),
                        Align(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 5.adaptSize,
                                width: 5.adaptSize,
                                margin: EdgeInsets.only(left: 116.h),
                                decoration: BoxDecoration(
                                  color: appTheme.indigo900,
                                  borderRadius: BorderRadius.circular(2.h),
                                ),
                              ),
                              SizedBox(height: 27.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(right: 141.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.indigo900,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.v),
                              Container(
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.only(left: 147.h),
                                decoration: BoxDecoration(
                                  color: appTheme.indigo90002,
                                  borderRadius: BorderRadius.circular(3.h),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.h,
                                  vertical: 110.v,
                                ),
                                decoration: AppDecoration.fillIndigo.copyWith(
                                  borderRadius: BorderRadiusStyle.circleBorder291,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.adaptSize,
                                        width: 6.adaptSize,
                                        margin: EdgeInsets.only(right: 56.h),
                                        decoration: BoxDecoration(
                                          color: appTheme.indigo900,
                                          borderRadius: BorderRadius.circular(3.h),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 5.adaptSize,
                                        width: 5.adaptSize,
                                        decoration: BoxDecoration(
                                          color: appTheme.indigo900,
                                          borderRadius: BorderRadius.circular(4.h),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.v),
                                    Text(
                                      "Sign Up".tr,
                                      style: CustomTextStyles.titleMediumBold2,
                                    ),
                                    SizedBox(height: 20.v),
                                    CustomElevatedButton(
                                      text: "Continue with Mobile Number".tr,
                                      margin: EdgeInsets.only(left: 5.h, right: 6.h),
                                      buttonStyle:
                                      CustomButtonStyles.fillOnErrorContainer,
                                      buttonTextStyle: theme.textTheme.titleMedium!,
                                      onPressed: () {
                                        onTapContinuewith(context);
                                      },
                                    ),
                                    SizedBox(height: 10.v),
                                    CustomElevatedButton(
                                      text: "Continue with Google".tr,
                                      margin: EdgeInsets.only(left: 5.h, right: 6.h),
                                      buttonTextStyle: theme.textTheme.titleMedium!,
                                      onPressed: () {
                                        onTapContinuewith1(context);
                                      },
                                    ),
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
              ],
            ),
          ),
        );
      }
    );
  }


  /// Navigates to the createAnAccountScreen when the action is triggered.
  onTapContinuewith(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.continueWithMobileNumberScreen,
    );
  }

  /// Navigates to the continueWithGoogleScreen when the action is triggered.
  onTapContinuewith1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.continueWithEmailScreen,
    );
  }
}

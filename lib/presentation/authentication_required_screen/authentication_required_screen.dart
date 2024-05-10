import 'package:flutter/material.dart';
import '../../api/api.dart';
import '../../core/app_export.dart';
import '../../util/general_utils.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'bloc/authentication_required_bloc.dart';
import 'models/authentication_required_model.dart';

class AuthenticationRequiredScreen extends StatefulWidget {
  const AuthenticationRequiredScreen({Key? key,required this.mobile, required this.otpDetails}) : super(key: key);
  final String otpDetails;
  final String mobile;
  static Widget builder(BuildContext context, {required String otpDetails,required String mobile}) {
    return BlocProvider<AuthenticationRequiredBloc>(
      create: (context) => AuthenticationRequiredBloc(AuthenticationRequiredState(
        authenticationRequiredModelObj: AuthenticationRequiredModel(),
      ))
        ..add(AuthenticationRequiredInitialEvent()),
      child: AuthenticationRequiredScreen(otpDetails: otpDetails, mobile: mobile,),
    );
  }

  @override
  State<AuthenticationRequiredScreen> createState() => _AuthenticationRequiredScreenState();
}

class _AuthenticationRequiredScreenState extends State<AuthenticationRequiredScreen> {

  late TextEditingController _otpController;
  bool _isButtonEnabled = true;
  bool isCorrectOTP = false; // Declare the variable at the class level
  String mobileNumber = "";
  String otp = "";
  @override
  void initState() {
    super.initState();
    _otpController = TextEditingController(text: widget.otpDetails);
    mobileNumber =  widget.mobile;
    print(widget.otpDetails);
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "IN +91 ${widget.mobile}".tr,
                        style: CustomTextStyles.titleMediumBlack90018,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 287.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 52.h,
                    ),
                    child: Text(
                      "We've sent a one time password (OTP) to the mobile number above. Please enter it to complete verification."
                          .tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumOnErrorContainer_1
                          .copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 53.h,
                    right: 52.h,
                  ),
                    child: CustomPinCodeTextField(
                      context: context,
                      controller: TextEditingController(text: widget.otpDetails),
                      onChanged: (value) {
                        setState(() {
                         _otpController.text= value;
                        });
                      },
                  ),
                ),
                SizedBox(height: 31.v),
                Opacity(
                  opacity: 0.2,
                  child: Text(
                    "lbl_invalid_otp".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer,
                  ),
                ),
                SizedBox(height: 32.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_resend_otp".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "lbl_01_57".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 52.v),
                CustomElevatedButton(
                  text: "Submit".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonTextStyle: theme.textTheme.titleMedium!,
<<<<<<< HEAD
                  // onPressed: () {
                  //   if (_isButtonEnabled) {
                  //     if (_otpController.text.isEmpty) {
                  //       Util.toastMessage("Please enter otp", context);
                  //     } else {
                  //       setState(() {
                  //         _isButtonEnabled = false;
                  //       });
                  //       ApiServices.verifyOtp(_otpController.text,widget.mobile,).then((value) {
                  //         print("OTP value: $value");
                  //         print(widget.mobile);
                  //         print(_otpController);
                  //         Navigator.pushNamed(context, AppRoutes.playScreenContainerScreen)
                  //             .then((_) {
                  //           setState(() {
                  //             _isButtonEnabled = true;
                  //           });
                  //         }).catchError((error) {
                  //           setState(() {
                  //             _isButtonEnabled = true;
                  //           });
                  //         });
                  //       });
                  //     }
                  //   }
                  // },
                    onPressed: () {
                      if (_isButtonEnabled) {
                        if (_otpController.text.isEmpty) {
                          Util.toastMessage("Please enter OTP", context);
                        } else {
                          setState(() {
                            _isButtonEnabled = false;
                          });
                          ApiServices.verifyOtp(_otpController.text, widget.mobile).then((otpDetails) {
                            setState(() {
                              _isButtonEnabled = true;
                            });
                            otp = widget.otpDetails;
                            print("OTP value: $otp");
                            print(widget.mobile);
                            print(_otpController);
                            if (_otpController.text == otp) {
                              Util.toastMessage("OTP verified successfully", context);
                              Future.delayed(Duration(seconds: 4), () {
                                Navigator.pushNamed(context, AppRoutes.playScreenContainerScreen)
                                    .then((_) {
                                  setState(() {
                                    _isButtonEnabled = true;
                                  });
                                });
                              });
                            }  else {
                              Util.toastMessage("Wrong OTP, please try again", context);
                            }
                          }).catchError((error) {
                            setState(() {
                              _isButtonEnabled = true;
                            });
                            // Handle error if any
                            print("Error: $error");
                            Util.toastMessage("An error occurred, please try again later", context);
                          });
                        }
                      }
                    }
                    ),
=======
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.playScreenContainerScreen);
                  },
                ),
>>>>>>> f35cb409e419b0fc857d2ef7eb2a61e9d9db8d7a
                SizedBox(height: 20.v),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signInWithPassword);
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "sign in with your password".tr,
                          style: CustomTextStyles.bodySmallPrimary,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLeftArrow,
        margin: EdgeInsets.only(left: 10.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_authentication_required".tr,
      ),
    );
  }
}

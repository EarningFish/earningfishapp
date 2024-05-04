import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/forgot_password_screen_one_bloc.dart';
import 'models/forgot_password_screen_one_model.dart';

class ForgotPasswordScreenOneScreen extends StatelessWidget {
  const ForgotPasswordScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordScreenOneBloc>(
      create: (context) =>
          ForgotPasswordScreenOneBloc(ForgotPasswordScreenOneState(
        forgotPasswordScreenOneModelObj: ForgotPasswordScreenOneModel(),
      ))
            ..add(ForgotPasswordScreenOneInitialEvent()),
      child: ForgotPasswordScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordScreenOneBloc,
        ForgotPasswordScreenOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.white800,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 150, // Set the desired height here
                    width: 150, // Set the desired width here
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "Password Changed".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 217.h,
                    child: Text(
                      "Your password has been changed successfully".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

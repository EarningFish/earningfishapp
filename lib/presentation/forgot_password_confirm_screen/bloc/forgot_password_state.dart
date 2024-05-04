part of 'forgot_password_bloc.dart';

/// Represents the state of ForgotPassword in the application.

// ignore_for_file: must_be_immutable
class ForgotPasswordState extends Equatable {
  ForgotPasswordState(
      {this.passwordController,
      this.confirmpasswordController,
      this.forgotPasswordModelObj});

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props =>
      [passwordController, confirmpasswordController, forgotPasswordModelObj];
  ForgotPasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}

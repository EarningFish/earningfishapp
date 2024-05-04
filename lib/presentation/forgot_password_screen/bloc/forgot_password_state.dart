part of 'forgot_password_bloc.dart';

/// Represents the state of ForgotPassword in the application.

// ignore_for_file: must_be_immutable
class ForgotPasswordState extends Equatable {
  ForgotPasswordState(
      {this.mobileNumberController, this.forgotPasswordModelObj});

  TextEditingController? mobileNumberController;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [mobileNumberController, forgotPasswordModelObj];
  ForgotPasswordState copyWith({
    TextEditingController? mobileNumberController,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}

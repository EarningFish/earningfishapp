part of 'forgot_password_screen_one_bloc.dart';

/// Represents the state of ForgotPasswordScreenOne in the application.

// ignore_for_file: must_be_immutable
class ForgotPasswordScreenOneState extends Equatable {
  ForgotPasswordScreenOneState({this.forgotPasswordScreenOneModelObj});

  ForgotPasswordScreenOneModel? forgotPasswordScreenOneModelObj;

  @override
  List<Object?> get props => [forgotPasswordScreenOneModelObj];
  ForgotPasswordScreenOneState copyWith(
      {ForgotPasswordScreenOneModel? forgotPasswordScreenOneModelObj}) {
    return ForgotPasswordScreenOneState(
      forgotPasswordScreenOneModelObj: forgotPasswordScreenOneModelObj ??
          this.forgotPasswordScreenOneModelObj,
    );
  }
}

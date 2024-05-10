part of 'authentication_required_bloc.dart';

/// Represents the state of AuthenticationRequired in the application.

// ignore_for_file: must_be_immutable
class AuthenticationRequiredState extends Equatable {
  AuthenticationRequiredState(
      {this.otpControllers, this.authenticationRequiredModelObj});

  TextEditingController? otpControllers;

  AuthenticationRequiredModel? authenticationRequiredModelObj;

  @override
  List<Object?> get props => [otpControllers, authenticationRequiredModelObj];
  AuthenticationRequiredState copyWith({
    TextEditingController? otpControllers,
    AuthenticationRequiredModel? authenticationRequiredModelObj, required TextEditingController otpController,
  }) {
    return AuthenticationRequiredState(
      otpControllers: otpControllers ?? this.otpControllers,
      authenticationRequiredModelObj:
          authenticationRequiredModelObj ?? this.authenticationRequiredModelObj,
    );
  }
}

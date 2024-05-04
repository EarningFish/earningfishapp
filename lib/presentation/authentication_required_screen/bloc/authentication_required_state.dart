part of 'authentication_required_bloc.dart';

/// Represents the state of AuthenticationRequired in the application.

// ignore_for_file: must_be_immutable
class AuthenticationRequiredState extends Equatable {
  AuthenticationRequiredState(
      {this.otpController, this.authenticationRequiredModelObj});

  TextEditingController? otpController;

  AuthenticationRequiredModel? authenticationRequiredModelObj;

  @override
  List<Object?> get props => [otpController, authenticationRequiredModelObj];
  AuthenticationRequiredState copyWith({
    TextEditingController? otpController,
    AuthenticationRequiredModel? authenticationRequiredModelObj,
  }) {
    return AuthenticationRequiredState(
      otpController: otpController ?? this.otpController,
      authenticationRequiredModelObj:
          authenticationRequiredModelObj ?? this.authenticationRequiredModelObj,
    );
  }
}

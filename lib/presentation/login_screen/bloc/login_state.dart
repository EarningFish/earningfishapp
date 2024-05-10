part of 'login_bloc.dart';

/// Represents the state of Login in the application.

class LoginState extends Equatable {
  LoginState({this.mobileNumberController, this.loginModelObj});

  TextEditingController? mobileNumberController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [mobileNumberController, loginModelObj];
  LoginState copyWith({
    TextEditingController? emailController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      mobileNumberController: emailController ?? this.mobileNumberController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}

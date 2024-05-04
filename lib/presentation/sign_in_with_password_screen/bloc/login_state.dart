part of 'login_bloc.dart';

/// Represents the state of Login in the application.

// ignore_for_file: must_be_immutable
class LoginState extends Equatable {
  LoginState(
      {this.emailController,
      this.passwordController,
      this.rememberMe = false,
      this.loginModelObj});

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool rememberMe;

  @override
  List<Object?> get props =>
      [emailController, passwordController, rememberMe, loginModelObj];
  LoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? rememberMe,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      rememberMe: rememberMe ?? this.rememberMe,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}

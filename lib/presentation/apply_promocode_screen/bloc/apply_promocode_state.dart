part of 'apply_promocode_bloc.dart';

/// Represents the state of Login in the application.

// ignore_for_file: must_be_immutable
class ApplyPromocodeState extends Equatable {
  ApplyPromocodeState({this.promocodeController, this.loginModelObj});

  TextEditingController? promocodeController;

  ApplyPromocodeScreenModel? loginModelObj;

  @override
  List<Object?> get props => [promocodeController, loginModelObj];
  ApplyPromocodeState copyWith({
    TextEditingController? emailController,
    ApplyPromocodeScreenModel? loginModelObj,
    required TextEditingController PromocodeController,
  }) {
    return ApplyPromocodeState(
      promocodeController: emailController ?? this.promocodeController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}

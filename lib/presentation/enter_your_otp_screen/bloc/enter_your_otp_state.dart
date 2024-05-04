part of 'enter_your_otp_bloc.dart';

/// Represents the state of EnterYourOtp in the application.

// ignore_for_file: must_be_immutable
class EnterYourOtpState extends Equatable {
  EnterYourOtpState({this.otpController, this.enterYourOtpModelObj});

  TextEditingController? otpController;

  EnterYourOtpModel? enterYourOtpModelObj;

  @override
  List<Object?> get props => [otpController, enterYourOtpModelObj];
  EnterYourOtpState copyWith({
    TextEditingController? otpController,
    EnterYourOtpModel? enterYourOtpModelObj,
  }) {
    return EnterYourOtpState(
      otpController: otpController ?? this.otpController,
      enterYourOtpModelObj: enterYourOtpModelObj ?? this.enterYourOtpModelObj,
    );
  }
}

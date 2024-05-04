part of 'enter_your_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EnterYourOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class EnterYourOtpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the EnterYourOtp widget is first created.
class EnterYourOtpInitialEvent extends EnterYourOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill

// ignore_for_file: must_be_immutable
class ChangeOTPEvent extends EnterYourOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [code];
}

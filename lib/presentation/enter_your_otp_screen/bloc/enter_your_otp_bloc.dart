import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../core/app_export.dart';
import '../models/enter_your_otp_model.dart';
part 'enter_your_otp_event.dart';
part 'enter_your_otp_state.dart';

/// A bloc that manages the state of a EnterYourOtp according to the event that is dispatched to it.
class EnterYourOtpBloc extends Bloc<EnterYourOtpEvent, EnterYourOtpState>
    with CodeAutoFill {
  EnterYourOtpBloc(EnterYourOtpState initialState) : super(initialState) {
    on<EnterYourOtpInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EnterYourOtpState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    EnterYourOtpInitialEvent event,
    Emitter<EnterYourOtpState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}

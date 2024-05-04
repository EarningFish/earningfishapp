import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../core/app_export.dart';
import '../models/authentication_required_model.dart';
part 'authentication_required_event.dart';
part 'authentication_required_state.dart';

/// A bloc that manages the state of a AuthenticationRequired according to the event that is dispatched to it.
class AuthenticationRequiredBloc
    extends Bloc<AuthenticationRequiredEvent, AuthenticationRequiredState>
    with CodeAutoFill {
  AuthenticationRequiredBloc(AuthenticationRequiredState initialState)
      : super(initialState) {
    on<AuthenticationRequiredInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<AuthenticationRequiredState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    AuthenticationRequiredInitialEvent event,
    Emitter<AuthenticationRequiredState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}

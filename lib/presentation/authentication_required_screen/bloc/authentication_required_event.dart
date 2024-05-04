part of 'authentication_required_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AuthenticationRequired widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AuthenticationRequiredEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AuthenticationRequired widget is first created.
class AuthenticationRequiredInitialEvent extends AuthenticationRequiredEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill

// ignore_for_file: must_be_immutable
class ChangeOTPEvent extends AuthenticationRequiredEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [code];
}

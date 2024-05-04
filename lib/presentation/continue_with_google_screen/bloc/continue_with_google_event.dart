part of 'continue_with_google_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ContinueWithGoogle widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ContinueWithGoogleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ContinueWithGoogle widget is first created.
class ContinueWithGoogleInitialEvent extends ContinueWithGoogleEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends ContinueWithGoogleEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

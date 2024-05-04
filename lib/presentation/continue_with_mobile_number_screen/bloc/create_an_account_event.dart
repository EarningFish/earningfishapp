part of 'create_an_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAnAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CreateAnAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CreateAnAccount widget is first created.
class CreateAnAccountInitialEvent extends CreateAnAccountEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends CreateAnAccountEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

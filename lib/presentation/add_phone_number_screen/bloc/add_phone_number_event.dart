part of 'add_phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddPhoneNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AddPhoneNumberEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddPhoneNumber widget is first created.
class AddPhoneNumberInitialEvent extends AddPhoneNumberEvent {
  @override
  List<Object?> get props => [];
}

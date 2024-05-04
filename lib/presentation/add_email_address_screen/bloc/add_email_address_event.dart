part of 'add_email_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddEmailAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AddEmailAddressEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddEmailAddress widget is first created.
class AddEmailAddressInitialEvent extends AddEmailAddressEvent {
  @override
  List<Object?> get props => [];
}

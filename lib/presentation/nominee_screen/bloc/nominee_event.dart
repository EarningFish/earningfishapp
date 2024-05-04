part of 'nominee_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Nominee widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NomineeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Nominee widget is first created.
class NomineeInitialEvent extends NomineeEvent {
  @override
  List<Object?> get props => [];
}

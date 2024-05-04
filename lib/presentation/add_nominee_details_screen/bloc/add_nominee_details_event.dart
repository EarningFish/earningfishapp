part of 'add_nominee_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddNomineeDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AddNomineeDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddNomineeDetails widget is first created.
class AddNomineeDetailsInitialEvent extends AddNomineeDetailsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends AddNomineeDetailsEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [date];
}

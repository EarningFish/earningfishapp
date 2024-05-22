part of 'add_bank_details_screen_container1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddBankDetailsScreenContainer1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AddBankDetailsScreenContainer1Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddBankDetailsScreenContainer1 widget is first created.
class AddBankDetailsScreenContainer1InitialEvent
    extends AddBankDetailsScreenContainer1Event {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button

// ignore_for_file: must_be_immutable
class ChangeRadioButtonEvent extends AddBankDetailsScreenContainer1Event {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [value];
}

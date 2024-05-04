part of 'add_fund_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddFundScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AddFundScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddFundScreen widget is first created.
class AddFundScreenInitialEvent extends AddFundScreenEvent {
  @override
  List<Object?> get props => [];
}

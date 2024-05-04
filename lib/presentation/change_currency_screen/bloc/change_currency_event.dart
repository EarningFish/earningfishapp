part of 'change_currency_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChangeCurrency widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ChangeCurrencyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ChangeCurrency widget is first created.
class ChangeCurrencyInitialEvent extends ChangeCurrencyEvent {
  @override
  List<Object?> get props => [];
}

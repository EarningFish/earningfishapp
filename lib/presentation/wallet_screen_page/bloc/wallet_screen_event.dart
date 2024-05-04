part of 'wallet_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletScreen widget is first created.
class WalletScreenInitialEvent extends WalletScreenEvent {
  @override
  List<Object?> get props => [];
}

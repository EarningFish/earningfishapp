part of 'play_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PlayScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PlayScreen widget is first created.
class PlayScreenInitialEvent extends PlayScreenEvent {
  @override
  List<Object?> get props => [];
}

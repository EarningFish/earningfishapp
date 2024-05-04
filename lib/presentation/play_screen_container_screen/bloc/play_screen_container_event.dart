part of 'play_screen_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayScreenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PlayScreenContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PlayScreenContainer widget is first created.
class PlayScreenContainerInitialEvent extends PlayScreenContainerEvent {
  @override
  List<Object?> get props => [];
}

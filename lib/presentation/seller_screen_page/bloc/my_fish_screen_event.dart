part of 'my_fish_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyFishScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyFishScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyFishScreen widget is first created.
class MyFishScreenInitialEvent extends MyFishScreenEvent {
  @override
  List<Object?> get props => [];
}

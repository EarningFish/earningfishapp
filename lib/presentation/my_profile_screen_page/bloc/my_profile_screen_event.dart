part of 'my_profile_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProfileScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyProfileScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyProfileScreen widget is first created.
class MyProfileScreenInitialEvent extends MyProfileScreenEvent {
  @override
  List<Object?> get props => [];
}

part of 'play_screen_container_bloc.dart';

/// Represents the state of PlayScreenContainer in the application.

// ignore_for_file: must_be_immutable
class PlayScreenContainerState extends Equatable {
  PlayScreenContainerState({this.playScreenContainerModelObj});

  PlayScreenContainerModel? playScreenContainerModelObj;

  @override
  List<Object?> get props => [playScreenContainerModelObj];
  PlayScreenContainerState copyWith(
      {PlayScreenContainerModel? playScreenContainerModelObj}) {
    return PlayScreenContainerState(
      playScreenContainerModelObj:
          playScreenContainerModelObj ?? this.playScreenContainerModelObj,
    );
  }
}

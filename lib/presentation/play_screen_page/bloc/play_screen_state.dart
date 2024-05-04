part of 'play_screen_bloc.dart';

/// Represents the state of PlayScreen in the application.

// ignore_for_file: must_be_immutable
class PlayScreenState extends Equatable {
  PlayScreenState({this.playScreenModelObj});

  PlayScreenModel? playScreenModelObj;

  @override
  List<Object?> get props => [playScreenModelObj];
  PlayScreenState copyWith({PlayScreenModel? playScreenModelObj}) {
    return PlayScreenState(
      playScreenModelObj: playScreenModelObj ?? this.playScreenModelObj,
    );
  }
}

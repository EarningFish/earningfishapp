part of 'no_fish_found_tab_container_bloc.dart';

/// Represents the state of NoFishFoundTabContainer in the application.

// ignore_for_file: must_be_immutable
class NoFishFoundTabContainerState extends Equatable {
  NoFishFoundTabContainerState({this.noFishFoundTabContainerModelObj});

  NoFishFoundTabContainerModel? noFishFoundTabContainerModelObj;

  @override
  List<Object?> get props => [noFishFoundTabContainerModelObj];
  NoFishFoundTabContainerState copyWith(
      {NoFishFoundTabContainerModel? noFishFoundTabContainerModelObj}) {
    return NoFishFoundTabContainerState(
      noFishFoundTabContainerModelObj: noFishFoundTabContainerModelObj ??
          this.noFishFoundTabContainerModelObj,
    );
  }
}

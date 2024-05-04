part of 'my_profile_screen_bloc.dart';

/// Represents the state of MyProfileScreen in the application.

// ignore_for_file: must_be_immutable
class MyProfileScreenState extends Equatable {
  MyProfileScreenState(
      {this.nomineevalueController, this.myProfileScreenModelObj});

  TextEditingController? nomineevalueController;

  MyProfileScreenModel? myProfileScreenModelObj;

  @override
  List<Object?> get props => [nomineevalueController, myProfileScreenModelObj];
  MyProfileScreenState copyWith({
    TextEditingController? nomineevalueController,
    MyProfileScreenModel? myProfileScreenModelObj,
  }) {
    return MyProfileScreenState(
      nomineevalueController:
          nomineevalueController ?? this.nomineevalueController,
      myProfileScreenModelObj:
          myProfileScreenModelObj ?? this.myProfileScreenModelObj,
    );
  }
}

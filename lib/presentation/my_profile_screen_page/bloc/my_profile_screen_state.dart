part of 'my_profile_screen_bloc.dart';

/// Represents the state of MyProfileScreen in the application.

// ignore_for_file: must_be_immutable
class MyProfileScreenState extends Equatable {
  MyProfileScreenState({this.searchController, this.myProfileScreenModelObj});

  TextEditingController? searchController;

  MyProfileScreenModel? myProfileScreenModelObj;

  @override
  List<Object?> get props => [searchController, myProfileScreenModelObj];
  MyProfileScreenState copyWith({
    TextEditingController? searchController,
    MyProfileScreenModel? myProfileScreenModelObj,
  }) {
    return MyProfileScreenState(
      searchController: searchController ?? this.searchController,
      myProfileScreenModelObj:
          myProfileScreenModelObj ?? this.myProfileScreenModelObj,
    );
  }
}

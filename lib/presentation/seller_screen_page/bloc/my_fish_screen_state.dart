part of 'my_fish_screen_bloc.dart';

/// Represents the state of MyFishScreen in the application.

// ignore_for_file: must_be_immutable
class MyFishScreenState extends Equatable {
  MyFishScreenState({this.searchController, this.myFishScreenModelObj});

  TextEditingController? searchController;

  MyFishScreenModel? myFishScreenModelObj;

  @override
  List<Object?> get props => [searchController, myFishScreenModelObj];
  MyFishScreenState copyWith({
    TextEditingController? searchController,
    MyFishScreenModel? myFishScreenModelObj,
  }) {
    return MyFishScreenState(
      searchController: searchController ?? this.searchController,
      myFishScreenModelObj: myFishScreenModelObj ?? this.myFishScreenModelObj,
    );
  }
}

import 'package:equatable/equatable.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [my_fish_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.

class MyFishScreenModel extends Equatable {
  MyFishScreenModel({this.userprofileItemList = const []});

  List<UserprofileItemModel> userprofileItemList;

  MyFishScreenModel copyWith(
      {List<UserprofileItemModel>? userprofileItemList}) {
    return MyFishScreenModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}

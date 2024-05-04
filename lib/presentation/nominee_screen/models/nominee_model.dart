import 'package:equatable/equatable.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [nominee_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class NomineeModel extends Equatable {
  NomineeModel({this.userprofileItemList = const []});

  List<UserprofileItemModel> userprofileItemList;

  NomineeModel copyWith({List<UserprofileItemModel>? userprofileItemList}) {
    return NomineeModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_fish_screen_model.dart';
import '../models/userprofile_item_model.dart';
part 'my_fish_screen_event.dart';
part 'my_fish_screen_state.dart';

/// A bloc that manages the state of a MyFishScreen according to the event that is dispatched to it.
class MyFishScreenBloc extends Bloc<MyFishScreenEvent, MyFishScreenState> {
  MyFishScreenBloc(MyFishScreenState initialState) : super(initialState) {
    on<MyFishScreenInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          nextFeedTimeIma: ImageConstant.imgImage126,
          nextFeedTimeTex: "Next Feed Time",
          nextFeedTimeVal: "00:00:00",
          stepText: "Step",
          nemoFishText: "Nemo Fish"),
      UserprofileItemModel(
          nextFeedTimeIma: ImageConstant.img2122123414Lip,
          nextFeedTimeTex: "Next Feed Time",
          nextFeedTimeVal: "00:00:00",
          stepText: "Step")
    ];
  }

  _onInitialize(
    MyFishScreenInitialEvent event,
    Emitter<MyFishScreenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        myFishScreenModelObj: state.myFishScreenModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}

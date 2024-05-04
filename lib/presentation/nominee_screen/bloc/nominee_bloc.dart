import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/nominee_model.dart';
import '../models/userprofile_item_model.dart';
part 'nominee_event.dart';
part 'nominee_state.dart';

/// A bloc that manages the state of a Nominee according to the event that is dispatched to it.
class NomineeBloc extends Bloc<NomineeEvent, NomineeState> {
  NomineeBloc(NomineeState initialState) : super(initialState) {
    on<NomineeInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          email: "Jerome@gmail.com",
          nutanjadav: "Jerome Bell",
          edit: "Edit ",
          phonenumber: "Phone Number: +918780108264",
          bod04061999: "BOD: 04/06/1999",
          weight: "National ID No. : EQVPM7592G"),
      UserprofileItemModel(
          email: "Devon@gmail.com",
          nutanjadav: "Devon Lane",
          edit: "Edit ",
          phonenumber: "Phone Number: +918780108264",
          bod04061999: "BOD: 04/06/1999",
          weight: "National ID No. : EQVPM7592G")
    ];
  }

  _onInitialize(
    NomineeInitialEvent event,
    Emitter<NomineeState> emit,
  ) async {
    emit(state.copyWith(
      avteroneController: TextEditingController(),
    ));
    emit(state.copyWith(
        nomineeModelObj: state.nomineeModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_bank_details_screen_container1_model.dart';
part 'add_bank_details_screen_container1_event.dart';
part 'add_bank_details_screen_container1_state.dart';

/// A bloc that manages the state of a AddBankDetailsScreenContainer1 according to the event that is dispatched to it.
class AddBankDetailsScreenContainer1Bloc extends Bloc<
    AddBankDetailsScreenContainer1Event, AddBankDetailsScreenContainer1State> {
  AddBankDetailsScreenContainer1Bloc(
      AddBankDetailsScreenContainer1State initialState)
      : super(initialState) {
    on<AddBankDetailsScreenContainer1InitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddBankDetailsScreenContainer1State> emit,
  ) {
    emit(state.copyWith(
      selectAccountType: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_saving", "lbl_current"];
  }

  _onInitialize(
    AddBankDetailsScreenContainer1InitialEvent event,
    Emitter<AddBankDetailsScreenContainer1State> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      name1Controller: TextEditingController(),
      enteraccountnumController: TextEditingController(),
      idController: TextEditingController(),
      addifsccodeoneController: TextEditingController(),
      selectAccountType: "",
    ));
    emit(state.copyWith(
        addBankDetailsScreenContainer1ModelObj:
            state.addBankDetailsScreenContainer1ModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}

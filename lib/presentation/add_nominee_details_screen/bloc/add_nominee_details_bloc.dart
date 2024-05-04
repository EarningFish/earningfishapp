import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_nominee_details_model.dart';
part 'add_nominee_details_event.dart';
part 'add_nominee_details_state.dart';

/// A bloc that manages the state of a AddNomineeDetails according to the event that is dispatched to it.
class AddNomineeDetailsBloc
    extends Bloc<AddNomineeDetailsEvent, AddNomineeDetailsState> {
  AddNomineeDetailsBloc(AddNomineeDetailsState initialState)
      : super(initialState) {
    on<AddNomineeDetailsInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    AddNomineeDetailsInitialEvent event,
    Emitter<AddNomineeDetailsState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      emailController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      eqvpm7594bvalueController: TextEditingController(),
      valueoneController: TextEditingController(),
    ));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<AddNomineeDetailsState> emit,
  ) {
    emit(state.copyWith(
        addNomineeDetailsModelObj: state.addNomineeDetailsModelObj?.copyWith(
      ddmmyyyy: event.date,
    )));
  }
}

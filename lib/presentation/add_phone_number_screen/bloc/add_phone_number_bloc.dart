import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_phone_number_model.dart';
part 'add_phone_number_event.dart';
part 'add_phone_number_state.dart';

/// A bloc that manages the state of a AddPhoneNumber according to the event that is dispatched to it.
class AddPhoneNumberBloc
    extends Bloc<AddPhoneNumberEvent, AddPhoneNumberState> {
  AddPhoneNumberBloc(AddPhoneNumberState initialState) : super(initialState) {
    on<AddPhoneNumberInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddPhoneNumberInitialEvent event,
    Emitter<AddPhoneNumberState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}

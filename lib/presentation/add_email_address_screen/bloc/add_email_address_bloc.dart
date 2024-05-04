import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_email_address_model.dart';
part 'add_email_address_event.dart';
part 'add_email_address_state.dart';

/// A bloc that manages the state of a AddEmailAddress according to the event that is dispatched to it.
class AddEmailAddressBloc
    extends Bloc<AddEmailAddressEvent, AddEmailAddressState> {
  AddEmailAddressBloc(AddEmailAddressState initialState) : super(initialState) {
    on<AddEmailAddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddEmailAddressInitialEvent event,
    Emitter<AddEmailAddressState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}

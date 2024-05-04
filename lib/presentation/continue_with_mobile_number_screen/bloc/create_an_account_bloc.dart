import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/create_an_account_model.dart';
part 'create_an_account_event.dart';
part 'create_an_account_state.dart';

/// A bloc that manages the state of a CreateAnAccount according to the event that is dispatched to it.
class CreateAnAccountBloc
    extends Bloc<CreateAnAccountEvent, CreateAnAccountState> {
  CreateAnAccountBloc(CreateAnAccountState initialState) : super(initialState) {
    on<CreateAnAccountInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<CreateAnAccountState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    CreateAnAccountInitialEvent event,
    Emitter<CreateAnAccountState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      idController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/continue_with_google_model.dart';
part 'continue_with_google_event.dart';
part 'continue_with_google_state.dart';

/// A bloc that manages the state of a ContinueWithGoogle according to the event that is dispatched to it.
class ContinueWithGoogleBloc
    extends Bloc<ContinueWithGoogleEvent, ContinueWithGoogleState> {
  ContinueWithGoogleBloc(ContinueWithGoogleState initialState)
      : super(initialState) {
    on<ContinueWithGoogleInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ContinueWithGoogleState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ContinueWithGoogleInitialEvent event,
    Emitter<ContinueWithGoogleState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      idController: TextEditingController(),
    ));
  }
}

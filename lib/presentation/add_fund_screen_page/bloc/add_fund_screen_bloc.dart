import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_fund_screen_model.dart';
part 'add_fund_screen_event.dart';
part 'add_fund_screen_state.dart';

/// A bloc that manages the state of a AddFundScreen according to the event that is dispatched to it.
class AddFundScreenBloc extends Bloc<AddFundScreenEvent, AddFundScreenState> {
  AddFundScreenBloc(AddFundScreenState initialState) : super(initialState) {
    on<AddFundScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddFundScreenInitialEvent event,
    Emitter<AddFundScreenState> emit,
  ) async {
    emit(state.copyWith(
      freeCoinValueController: TextEditingController(),
      walletController: TextEditingController(),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/withdraw_fund_model.dart';
part 'withdraw_fund_event.dart';
part 'withdraw_fund_state.dart';

/// A bloc that manages the state of a WithdrawFund according to the event that is dispatched to it.
class WithdrawFundBloc extends Bloc<WithdrawFundEvent, WithdrawFundState> {
  WithdrawFundBloc(WithdrawFundState initialState) : super(initialState) {
    on<WithdrawFundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WithdrawFundInitialEvent event,
    Emitter<WithdrawFundState> emit,
  ) async {
    emit(state.copyWith(
      valueoneController: TextEditingController(),
    ));
  }
}

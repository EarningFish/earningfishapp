import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/change_currency_model.dart';
import '../models/currencyfield_item_model.dart';
part 'change_currency_event.dart';
part 'change_currency_state.dart';

/// A bloc that manages the state of a ChangeCurrency according to the event that is dispatched to it.
class ChangeCurrencyBloc
    extends Bloc<ChangeCurrencyEvent, ChangeCurrencyState> {
  ChangeCurrencyBloc(ChangeCurrencyState initialState) : super(initialState) {
    on<ChangeCurrencyInitialEvent>(_onInitialize);
  }

  List<CurrencyfieldItemModel> fillCurrencyfieldItemList() {
    return [
      CurrencyfieldItemModel(
          euro: "United States",
          image: ImageConstant.imgUnitedStates,
          euroone: "+1"),
      CurrencyfieldItemModel(
          euro: "Ghanaian cedis",
          image: ImageConstant.imgCloseBlack900,
          euroone: "+233"),
      CurrencyfieldItemModel(euroone: "+250"),
      CurrencyfieldItemModel(euroone: "+86"),
      CurrencyfieldItemModel(euroone: "+254"),
      CurrencyfieldItemModel(euroone: "+20")
    ];
  }

  _onInitialize(
    ChangeCurrencyInitialEvent event,
    Emitter<ChangeCurrencyState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        changeCurrencyModelObj: state.changeCurrencyModelObj?.copyWith(
      currencyfieldItemList: fillCurrencyfieldItemList(),
    )));
  }
}

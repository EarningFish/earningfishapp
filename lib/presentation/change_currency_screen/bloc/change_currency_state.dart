part of 'change_currency_bloc.dart';

/// Represents the state of ChangeCurrency in the application.

// ignore_for_file: must_be_immutable
class ChangeCurrencyState extends Equatable {
  ChangeCurrencyState({this.searchController, this.changeCurrencyModelObj});

  TextEditingController? searchController;

  ChangeCurrencyModel? changeCurrencyModelObj;

  @override
  List<Object?> get props => [searchController, changeCurrencyModelObj];
  ChangeCurrencyState copyWith({
    TextEditingController? searchController,
    ChangeCurrencyModel? changeCurrencyModelObj,
  }) {
    return ChangeCurrencyState(
      searchController: searchController ?? this.searchController,
      changeCurrencyModelObj:
          changeCurrencyModelObj ?? this.changeCurrencyModelObj,
    );
  }
}

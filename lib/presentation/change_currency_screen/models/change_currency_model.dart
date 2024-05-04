import 'package:equatable/equatable.dart';
import 'currencyfield_item_model.dart';

/// This class defines the variables used in the [change_currency_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class ChangeCurrencyModel extends Equatable {
  ChangeCurrencyModel({this.currencyfieldItemList = const []});

  List<CurrencyfieldItemModel> currencyfieldItemList;

  ChangeCurrencyModel copyWith(
      {List<CurrencyfieldItemModel>? currencyfieldItemList}) {
    return ChangeCurrencyModel(
      currencyfieldItemList:
          currencyfieldItemList ?? this.currencyfieldItemList,
    );
  }

  @override
  List<Object?> get props => [currencyfieldItemList];
}

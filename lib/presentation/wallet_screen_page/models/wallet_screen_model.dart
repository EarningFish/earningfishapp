import 'package:equatable/equatable.dart';
import 'listaddfundtext_item_model.dart';
import 'transaction_item_model.dart';

/// This class defines the variables used in the [wallet_screen_page],
/// and is typically used to hold data that is passed between different parts of the application. // ignore_for_file: must_be_immutable

class WalletScreenModel extends Equatable {

  WalletScreenModel(
      {this.listaddfundtextItemList = const [],
      this.transactionItemList = const []});

  List<ListaddfundtextItemModel> listaddfundtextItemList;

  List<TransactionItemModel> transactionItemList;

  WalletScreenModel copyWith({
    List<ListaddfundtextItemModel>? listaddfundtextItemList,
    List<TransactionItemModel>? transactionItemList,
  }) {
    return WalletScreenModel(
      listaddfundtextItemList:
          listaddfundtextItemList ?? this.listaddfundtextItemList,
      transactionItemList: transactionItemList ?? this.transactionItemList,
    );
  }

  @override
  List<Object?> get props => [listaddfundtextItemList, transactionItemList];
}

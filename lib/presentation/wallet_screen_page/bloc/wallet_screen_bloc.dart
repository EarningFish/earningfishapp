import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listaddfundtext_item_model.dart';
import '../models/transaction_item_model.dart';
import '../models/wallet_screen_model.dart';
part 'wallet_screen_event.dart';
part 'wallet_screen_state.dart';

/// A bloc that manages the state of a WalletScreen according to the event that is dispatched to it.
class WalletScreenBloc extends Bloc<WalletScreenEvent, WalletScreenState> {
  WalletScreenBloc(WalletScreenState initialState) : super(initialState) {
    on<WalletScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletScreenInitialEvent event,
    Emitter<WalletScreenState> emit,
  ) async {
    emit(state.copyWith(
        walletScreenModelObj: state.walletScreenModelObj?.copyWith(
      listaddfundtextItemList: fillListaddfundtextItemList(),
      transactionItemList: fillTransactionItemList(),
    )));
  }

  List<ListaddfundtextItemModel> fillListaddfundtextItemList() {
    return [
      ListaddfundtextItemModel(
          walletImage: ImageConstant.imgWallet, addFundText: "Add Fund"),
      ListaddfundtextItemModel(
          walletImage: ImageConstant.imgWithdrawFundIcon,
          addFundText: "Withdraw"),
      ListaddfundtextItemModel(
          walletImage: ImageConstant.imgPayBills, addFundText: "Pay Bills"),
      ListaddfundtextItemModel(
          walletImage: ImageConstant.imgSendFund, addFundText: "Send Fund")
    ];
  }

  List<TransactionItemModel> fillTransactionItemList() {
    return [
      TransactionItemModel(
          userImage: ImageConstant.imgFrame10124,
          transactionTitl: "Laura Myers",
          contactNumber: "(316) 555-0116",
          transactionDate: "3 Dec, 2022",
          transactionTime: "2:00 PM",
          transactionAmou: "-230.00",
          transactionType: "Fish Buy"),
      TransactionItemModel(
          userImage: ImageConstant.imgFrame1012440x40,
          transactionTitl: "Amber Cowan",
          contactNumber: "(225) 555-0118",
          transactionDate: "3 Dec, 2022",
          transactionTime: "2:00 PM",
          transactionAmou: "+250.00",
          transactionType: "Add Fund"),
      TransactionItemModel(
          userImage: ImageConstant.imgFrame101241,
          transactionTitl: "Jenny Wilson",
          contactNumber: "(209) 555-0104",
          transactionDate: "3 Dec, 2022",
          transactionTime: "2:00 PM",
          transactionAmou: "-230.00"),
      TransactionItemModel(
          userImage: ImageConstant.imgFrame101242,
          transactionTitl: "Guy Hawkins",
          contactNumber: "(219) 555-0114",
          transactionDate: "3 Dec, 2022",
          transactionTime: "2:00 PM",
          transactionAmou: "+250.00",
          transactionType: "Fish Sell")
    ];
  }
}

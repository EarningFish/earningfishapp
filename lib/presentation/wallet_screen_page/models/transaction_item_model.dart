import '../../../core/app_export.dart';

/// This class is used in the [transaction_item_widget] screen.

class TransactionItemModel {
  TransactionItemModel(
      {this.userImage,
      this.transactionTitl,
      this.contactNumber,
      this.transactionDate,
      this.transactionTime,
      this.transactionAmou,
      this.transactionType,
      this.id}) {
    userImage = userImage ?? ImageConstant.imgFrame10124;
    transactionTitl = transactionTitl ?? "Laura Myers";
    contactNumber = contactNumber ?? "(316) 555-0116";
    transactionDate = transactionDate ?? "3 Dec, 2022";
    transactionTime = transactionTime ?? "2:00 PM";
    transactionAmou = transactionAmou ?? "-230.00";
    transactionType = transactionType ?? "Fish Buy";
    id = id ?? "";
  }

  String? userImage;

  String? transactionTitl;

  String? contactNumber;

  String? transactionDate;

  String? transactionTime;

  String? transactionAmou;

  String? transactionType;

  String? id;
}

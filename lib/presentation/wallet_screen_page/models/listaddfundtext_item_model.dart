import '../../../core/app_export.dart';

/// This class is used in the [listaddfundtext_item_widget] screen.

class ListaddfundtextItemModel {
  ListaddfundtextItemModel({this.walletImage, this.addFundText, this.id}) {
    walletImage = walletImage ?? ImageConstant.imgWallet;
    addFundText = addFundText ?? "Add Fund";
    id = id ?? "";
  }

  String? walletImage;

  String? addFundText;

  String? id;
}

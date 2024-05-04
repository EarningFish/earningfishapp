import '../../../core/app_export.dart';

/// This class is used in the [currencyfield_item_widget] screen.

class CurrencyfieldItemModel {
  CurrencyfieldItemModel({this.euro, this.image, this.euroone, this.id}) {
    euro = euro ?? "United States";
    image = image ?? ImageConstant.imgUnitedStates;
    euroone = euroone ?? "+1";
    id = id ?? "";
  }

  String? euro;

  String? image;

  String? euroone;

  String? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.

class UserprofileItemModel {
  UserprofileItemModel(
      {this.nextFeedTimeIma,
      this.nextFeedTimeTex,
      this.nextFeedTimeVal,
      this.stepText,
      this.nemoFishText,
      this.id}) {
    nextFeedTimeIma = nextFeedTimeIma ?? ImageConstant.imgImage126;
    nextFeedTimeTex = nextFeedTimeTex ?? "Next Feed Time";
    nextFeedTimeVal = nextFeedTimeVal ?? "00:00:00";
    stepText = stepText ?? "Step";
    nemoFishText = nemoFishText ?? "Nemo Fish";
    id = id ?? "";
  }

  String? nextFeedTimeIma;

  String? nextFeedTimeTex;

  String? nextFeedTimeVal;

  String? stepText;

  String? nemoFishText;

  String? id;
}

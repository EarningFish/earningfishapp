import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [add_bank_details_screen_container1_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddBankDetailsScreenContainer1Model extends Equatable {
  AddBankDetailsScreenContainer1Model({this.radioList = const []});

  List<String> radioList;

  AddBankDetailsScreenContainer1Model copyWith({List<String>? radioList}) {
    return AddBankDetailsScreenContainer1Model(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}

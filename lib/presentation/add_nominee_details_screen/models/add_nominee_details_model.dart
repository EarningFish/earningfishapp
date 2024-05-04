import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [add_nominee_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class AddNomineeDetailsModel extends Equatable {
  AddNomineeDetailsModel(
      {this.selectedDdmmyyyy, this.ddmmyyyy = "DD/MM/YYYY"}) {
    selectedDdmmyyyy = selectedDdmmyyyy ?? DateTime.now();
  }

  DateTime? selectedDdmmyyyy;

  String ddmmyyyy;

  AddNomineeDetailsModel copyWith({
    DateTime? selectedDdmmyyyy,
    String? ddmmyyyy,
  }) {
    return AddNomineeDetailsModel(
      selectedDdmmyyyy: selectedDdmmyyyy ?? this.selectedDdmmyyyy,
      ddmmyyyy: ddmmyyyy ?? this.ddmmyyyy,
    );
  }

  @override
  List<Object?> get props => [selectedDdmmyyyy, ddmmyyyy];
}

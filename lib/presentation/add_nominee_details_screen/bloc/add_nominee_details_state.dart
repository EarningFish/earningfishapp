part of 'add_nominee_details_bloc.dart';

/// Represents the state of AddNomineeDetails in the application.

// ignore_for_file: must_be_immutable
class AddNomineeDetailsState extends Equatable {
  AddNomineeDetailsState(
      {this.fullNameController,
      this.emailController,
      this.phoneNumberController,
      this.eqvpm7594bvalueController,
      this.valueoneController,
      this.addNomineeDetailsModelObj});

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  TextEditingController? eqvpm7594bvalueController;

  TextEditingController? valueoneController;

  AddNomineeDetailsModel? addNomineeDetailsModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        phoneNumberController,
        eqvpm7594bvalueController,
        valueoneController,
        addNomineeDetailsModelObj
      ];
  AddNomineeDetailsState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    TextEditingController? eqvpm7594bvalueController,
    TextEditingController? valueoneController,
    AddNomineeDetailsModel? addNomineeDetailsModelObj,
  }) {
    return AddNomineeDetailsState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      eqvpm7594bvalueController:
          eqvpm7594bvalueController ?? this.eqvpm7594bvalueController,
      valueoneController: valueoneController ?? this.valueoneController,
      addNomineeDetailsModelObj:
          addNomineeDetailsModelObj ?? this.addNomineeDetailsModelObj,
    );
  }
}

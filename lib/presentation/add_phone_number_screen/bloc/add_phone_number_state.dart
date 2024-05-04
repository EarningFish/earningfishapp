part of 'add_phone_number_bloc.dart';

/// Represents the state of AddPhoneNumber in the application.

// ignore_for_file: must_be_immutable
class AddPhoneNumberState extends Equatable {
  AddPhoneNumberState(
      {this.phoneNumberController, this.addPhoneNumberModelObj});

  TextEditingController? phoneNumberController;

  AddPhoneNumberModel? addPhoneNumberModelObj;

  @override
  List<Object?> get props => [phoneNumberController, addPhoneNumberModelObj];
  AddPhoneNumberState copyWith({
    TextEditingController? phoneNumberController,
    AddPhoneNumberModel? addPhoneNumberModelObj,
  }) {
    return AddPhoneNumberState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      addPhoneNumberModelObj:
          addPhoneNumberModelObj ?? this.addPhoneNumberModelObj,
    );
  }
}

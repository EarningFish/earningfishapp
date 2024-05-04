part of 'continue_with_google_bloc.dart';

/// Represents the state of ContinueWithGoogle in the application.

// ignore_for_file: must_be_immutable
class ContinueWithGoogleState extends Equatable {
  ContinueWithGoogleState(
      {this.phoneNumberController,
      this.idController,
      this.selectedCountry,
      this.continueWithGoogleModelObj});

  TextEditingController? phoneNumberController;

  TextEditingController? idController;

  ContinueWithGoogleModel? continueWithGoogleModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        idController,
        selectedCountry,
        continueWithGoogleModelObj
      ];
  ContinueWithGoogleState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? idController,
    Country? selectedCountry,
    ContinueWithGoogleModel? continueWithGoogleModelObj,
  }) {
    return ContinueWithGoogleState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      idController: idController ?? this.idController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      continueWithGoogleModelObj:
          continueWithGoogleModelObj ?? this.continueWithGoogleModelObj,
    );
  }
}

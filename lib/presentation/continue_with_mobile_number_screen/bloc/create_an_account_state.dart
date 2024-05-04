part of 'create_an_account_bloc.dart';

/// Represents the state of CreateAnAccount in the application.

// ignore_for_file: must_be_immutable
class CreateAnAccountState extends Equatable {
  CreateAnAccountState(
      {this.firstNameController,
      this.phoneNumberController,
      this.idController,
      this.passwordController,
      this.selectedCountry,
      this.createAnAccountModelObj});

  TextEditingController? firstNameController;

  TextEditingController? phoneNumberController;

  TextEditingController? idController;

  TextEditingController? passwordController;

  CreateAnAccountModel? createAnAccountModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        firstNameController,
        phoneNumberController,
        idController,
        passwordController,
        selectedCountry,
        createAnAccountModelObj
      ];
  CreateAnAccountState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? phoneNumberController,
    TextEditingController? idController,
    TextEditingController? passwordController,
    Country? selectedCountry,
    CreateAnAccountModel? createAnAccountModelObj,
  }) {
    return CreateAnAccountState(
      firstNameController: firstNameController ?? this.firstNameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      idController: idController ?? this.idController,
      passwordController: passwordController ?? this.passwordController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      createAnAccountModelObj:
          createAnAccountModelObj ?? this.createAnAccountModelObj,
    );
  }
}

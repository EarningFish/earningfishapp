part of 'add_bank_details_screen_container1_bloc.dart';

/// Represents the state of AddBankDetailsScreenContainer1 in the application.

// ignore_for_file: must_be_immutable
class AddBankDetailsScreenContainer1State extends Equatable {
  AddBankDetailsScreenContainer1State(
      {this.nameController,
      this.name1Controller,
      this.enteraccountnumController,
      this.idController,
      this.addifsccodeoneController,
      this.selectAccountType = "",
      this.addBankDetailsScreenContainer1ModelObj});

  TextEditingController? nameController;

  TextEditingController? name1Controller;

  TextEditingController? enteraccountnumController;

  TextEditingController? idController;

  TextEditingController? addifsccodeoneController;

  AddBankDetailsScreenContainer1Model? addBankDetailsScreenContainer1ModelObj;

  String selectAccountType;

  @override
  List<Object?> get props => [
        nameController,
        name1Controller,
        enteraccountnumController,
        idController,
        addifsccodeoneController,
        selectAccountType,
        addBankDetailsScreenContainer1ModelObj
      ];
  AddBankDetailsScreenContainer1State copyWith({
    TextEditingController? nameController,
    TextEditingController? name1Controller,
    TextEditingController? enteraccountnumController,
    TextEditingController? idController,
    TextEditingController? addifsccodeoneController,
    String? selectAccountType,
    AddBankDetailsScreenContainer1Model? addBankDetailsScreenContainer1ModelObj,
  }) {
    return AddBankDetailsScreenContainer1State(
      nameController: nameController ?? this.nameController,
      name1Controller: name1Controller ?? this.name1Controller,
      enteraccountnumController:
          enteraccountnumController ?? this.enteraccountnumController,
      idController: idController ?? this.idController,
      addifsccodeoneController:
          addifsccodeoneController ?? this.addifsccodeoneController,
      selectAccountType: selectAccountType ?? this.selectAccountType,
      addBankDetailsScreenContainer1ModelObj:
          addBankDetailsScreenContainer1ModelObj ??
              this.addBankDetailsScreenContainer1ModelObj,
    );
  }
}

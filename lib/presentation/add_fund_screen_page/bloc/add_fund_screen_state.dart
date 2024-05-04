part of 'add_fund_screen_bloc.dart';

/// Represents the state of AddFundScreen in the application.

// ignore_for_file: must_be_immutable
class AddFundScreenState extends Equatable {
  AddFundScreenState(
      {this.freeCoinValueController,
      this.walletController,
      this.addFundScreenModelObj});

  TextEditingController? freeCoinValueController;

  TextEditingController? walletController;

  AddFundScreenModel? addFundScreenModelObj;

  @override
  List<Object?> get props =>
      [freeCoinValueController, walletController, addFundScreenModelObj];
  AddFundScreenState copyWith({
    TextEditingController? freeCoinValueController,
    TextEditingController? walletController,
    AddFundScreenModel? addFundScreenModelObj,
  }) {
    return AddFundScreenState(
      freeCoinValueController:
          freeCoinValueController ?? this.freeCoinValueController,
      walletController: walletController ?? this.walletController,
      addFundScreenModelObj:
          addFundScreenModelObj ?? this.addFundScreenModelObj,
    );
  }
}

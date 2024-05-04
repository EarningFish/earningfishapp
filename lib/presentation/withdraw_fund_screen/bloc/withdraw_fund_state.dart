part of 'withdraw_fund_bloc.dart';

/// Represents the state of WithdrawFund in the application.

// ignore_for_file: must_be_immutable
class WithdrawFundState extends Equatable {
  WithdrawFundState({this.valueoneController, this.withdrawFundModelObj});

  TextEditingController? valueoneController;

  WithdrawFundModel? withdrawFundModelObj;

  @override
  List<Object?> get props => [valueoneController, withdrawFundModelObj];
  WithdrawFundState copyWith({
    TextEditingController? valueoneController,
    WithdrawFundModel? withdrawFundModelObj,
  }) {
    return WithdrawFundState(
      valueoneController: valueoneController ?? this.valueoneController,
      withdrawFundModelObj: withdrawFundModelObj ?? this.withdrawFundModelObj,
    );
  }
}

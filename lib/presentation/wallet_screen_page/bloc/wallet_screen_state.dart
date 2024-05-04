part of 'wallet_screen_bloc.dart';

/// Represents the state of WalletScreen in the application.

// ignore_for_file: must_be_immutable
class WalletScreenState extends Equatable {
  WalletScreenState({this.walletScreenModelObj});

  WalletScreenModel? walletScreenModelObj;

  @override
  List<Object?> get props => [walletScreenModelObj];
  WalletScreenState copyWith({WalletScreenModel? walletScreenModelObj}) {
    return WalletScreenState(
      walletScreenModelObj: walletScreenModelObj ?? this.walletScreenModelObj,
    );
  }
}

part of 'nominee_bloc.dart';

/// Represents the state of Nominee in the application.

// ignore_for_file: must_be_immutable
class NomineeState extends Equatable {
  NomineeState({this.avteroneController, this.nomineeModelObj});

  TextEditingController? avteroneController;

  NomineeModel? nomineeModelObj;

  @override
  List<Object?> get props => [avteroneController, nomineeModelObj];
  NomineeState copyWith({
    TextEditingController? avteroneController,
    NomineeModel? nomineeModelObj,
  }) {
    return NomineeState(
      avteroneController: avteroneController ?? this.avteroneController,
      nomineeModelObj: nomineeModelObj ?? this.nomineeModelObj,
    );
  }
}

part of 'add_email_address_bloc.dart';

/// Represents the state of AddEmailAddress in the application.

// ignore_for_file: must_be_immutable
class AddEmailAddressState extends Equatable {
  AddEmailAddressState({this.emailController, this.addEmailAddressModelObj});

  TextEditingController? emailController;

  AddEmailAddressModel? addEmailAddressModelObj;

  @override
  List<Object?> get props => [emailController, addEmailAddressModelObj];
  AddEmailAddressState copyWith({
    TextEditingController? emailController,
    AddEmailAddressModel? addEmailAddressModelObj,
  }) {
    return AddEmailAddressState(
      emailController: emailController ?? this.emailController,
      addEmailAddressModelObj:
          addEmailAddressModelObj ?? this.addEmailAddressModelObj,
    );
  }
}

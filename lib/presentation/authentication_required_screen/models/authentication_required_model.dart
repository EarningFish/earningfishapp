import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [authentication_required_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AuthenticationRequiredModel extends Equatable {
  AuthenticationRequiredModel();

  AuthenticationRequiredModel copyWith() {
    return AuthenticationRequiredModel();
  }

  @override
  List<Object?> get props => [];
}

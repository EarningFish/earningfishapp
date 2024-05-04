import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/forgot_password_screen_one_model.dart';
part 'forgot_password_screen_one_event.dart';
part 'forgot_password_screen_one_state.dart';

/// A bloc that manages the state of a ForgotPasswordScreenOne according to the event that is dispatched to it.
class ForgotPasswordScreenOneBloc
    extends Bloc<ForgotPasswordScreenOneEvent, ForgotPasswordScreenOneState> {
  ForgotPasswordScreenOneBloc(ForgotPasswordScreenOneState initialState)
      : super(initialState) {
    on<ForgotPasswordScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgotPasswordScreenOneInitialEvent event,
    Emitter<ForgotPasswordScreenOneState> emit,
  ) async {}
}

// import 'dart:js_util';

// import 'package:flutter/material.dart';
// import 'package:guessme_s_application1/core/app_export.dart';
// import 'package:sms_autofill/sms_autofill.dart';

// import '../../authentication_required_screen/bloc/authentication_required_bloc.dart';

// /// A bloc that manages the state of a AuthenticationRequired according to the event that is dispatched to it.
// class ApplyPromocodeBloc extends Bloc<ApplyPromocodeEvent, ApplyPromocodeState>
//     with CodeAutoFill {
//   ApplyPromocodeBloc(ApplyPromocodeState initialState) : super(initialState) {}
//   @override
//   codeUpdated() {
//     add(
//       ChangeOTPEvent(code: code!)
//     ); listenForCode();
//   }
// }

// @override
// void codeUpdated() {
//   // TODO: implement codeUpdated
// }

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/apply_promocode_model.dart';
part 'apply_promocode_event.dart';
part 'apply_promocode_state.dart';

/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class ApplyPromocodeBloc
    extends Bloc<ApplyPromocodeEvent, ApplyPromocodeState> {
  ApplyPromocodeBloc(ApplyPromocodeState initialState) : super(initialState) {
    on<ApplyPromocodeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplyPromocodeInitialEvent event,
    Emitter<ApplyPromocodeState> emit,
  ) async {
    emit(state.copyWith(
      PromocodeController: TextEditingController(),
    ));
  }
}



/// ApplyPromocode
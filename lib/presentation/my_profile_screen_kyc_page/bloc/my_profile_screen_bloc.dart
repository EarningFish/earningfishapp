import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_profile_screen_model.dart';
part 'my_profile_screen_event.dart';
part 'my_profile_screen_state.dart';

/// A bloc that manages the state of a MyProfileScreen according to the event that is dispatched to it.
class MyProfileScreenBloc
    extends Bloc<MyProfileScreenEvent, MyProfileScreenState> {
  MyProfileScreenBloc(MyProfileScreenState initialState) : super(initialState) {
    on<MyProfileScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyProfileScreenInitialEvent event,
    Emitter<MyProfileScreenState> emit,
  ) async {
    emit(state.copyWith(
      nomineevalueController: TextEditingController(),
    ));
  }
}

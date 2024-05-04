import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/play_screen_model.dart';
part 'play_screen_event.dart';
part 'play_screen_state.dart';

/// A bloc that manages the state of a PlayScreen according to the event that is dispatched to it.
class PlayScreenBloc extends Bloc<PlayScreenEvent, PlayScreenState> {
  PlayScreenBloc(PlayScreenState initialState) : super(initialState) {
    on<PlayScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayScreenInitialEvent event,
    Emitter<PlayScreenState> emit,
  ) async {}
}

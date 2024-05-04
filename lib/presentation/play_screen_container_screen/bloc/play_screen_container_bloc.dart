import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/play_screen_container_model.dart';
part 'play_screen_container_event.dart';
part 'play_screen_container_state.dart';

/// A bloc that manages the state of a PlayScreenContainer according to the event that is dispatched to it.
class PlayScreenContainerBloc
    extends Bloc<PlayScreenContainerEvent, PlayScreenContainerState> {
  PlayScreenContainerBloc(PlayScreenContainerState initialState)
      : super(initialState) {
    on<PlayScreenContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayScreenContainerInitialEvent event,
    Emitter<PlayScreenContainerState> emit,
  ) async {}
}

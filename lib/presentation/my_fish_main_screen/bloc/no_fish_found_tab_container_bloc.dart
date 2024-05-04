import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/no_fish_found_tab_container_model.dart';
part 'no_fish_found_tab_container_event.dart';
part 'no_fish_found_tab_container_state.dart';

/// A bloc that manages the state of a NoFishFoundTabContainer according to the event that is dispatched to it.
class NoFishFoundTabContainerBloc
    extends Bloc<NoFishFoundTabContainerEvent, NoFishFoundTabContainerState> {
  NoFishFoundTabContainerBloc(NoFishFoundTabContainerState initialState)
      : super(initialState) {
    on<NoFishFoundTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoFishFoundTabContainerInitialEvent event,
    Emitter<NoFishFoundTabContainerState> emit,
  ) async {}
}

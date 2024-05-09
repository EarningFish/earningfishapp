part of 'apply_promocode_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Login widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ApplyPromocodeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Login widget is first created.
class ApplyPromocodeInitialEvent extends ApplyPromocodeEvent {
  @override
  List<Object?> get props => [];
}

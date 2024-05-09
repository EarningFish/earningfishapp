part of 'apply_promocode_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///
/// Events must be immutable and implement the [Equatable] interface.
class ApplyPromocodeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ApplyPromocodeInitialEvent extends ApplyPromocodeEvent {
  @override
  List<Object?> get props => [];
}

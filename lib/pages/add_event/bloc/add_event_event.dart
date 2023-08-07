// ignore_for_file: must_be_immutable

part of 'add_event_bloc.dart';

@immutable
abstract class AddEventEvent extends Equatable {}

/// Event that is dispatched when the AddEvent widget is first created.
class AddEventInitialEvent extends AddEventEvent {
  @override
  List<Object?> get props => [];
}

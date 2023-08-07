import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardordev/pages/add_event/model/add_event.dart';

part 'add_event_event.dart';
part 'add_event_state.dart';

/// A bloc that manages the state of a AddEvent according to the event that is dispatched to it.
class AddEventBloc extends Bloc<AddEventEvent, AddEventState> {
  AddEventBloc(AddEventState initialState) : super(initialState) {
    on<AddEventInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddEventInitialEvent event,
    Emitter<AddEventState> emit,
  ) async {
    emit(state.copyWith(
        groupnineController: TextEditingController(),
        groupthirteenController: TextEditingController(),
        groupelevenController: TextEditingController(),
        grouptenController: TextEditingController()));
  }
}

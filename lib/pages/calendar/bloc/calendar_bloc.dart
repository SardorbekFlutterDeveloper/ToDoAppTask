import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardordev/pages/calendar/model/calendar_model.dart';
import 'package:sardordev/pages/calendar/model/item_model.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

/// A bloc that manages the state of a Calendar according to the event that is dispatched to it.
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(CalendarState initialState) : super(initialState) {
    on<CalendarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarInitialEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(
        calendarModelObj: state.calendarModelObj?.copyWith(
      listrectanglesiItemList: fillListrectanglesiItemList(),
    )));
  }

  List<ListrectanglesiItemModel> fillListrectanglesiItemList() {
    return List.generate(3, (index) => ListrectanglesiItemModel());
  }
}

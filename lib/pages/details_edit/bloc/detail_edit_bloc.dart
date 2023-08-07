import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sardordev/pages/details_edit/bloc/detail_edit_event.dart';
import 'package:sardordev/pages/details_edit/bloc/detail_edit_state.dart';

class DetailsEventBloc extends Bloc<DetailsEventEvent, DetailsEventState> {
  DetailsEventBloc(DetailsEventState initialState) : super(initialState) {
    on<DetailsEventInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailsEventInitialEvent event,
    Emitter<DetailsEventState> emit,
  ) async {}
}

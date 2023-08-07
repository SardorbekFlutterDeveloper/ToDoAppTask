// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:sardordev/pages/calendar/model/item_model.dart';

/// This class defines the variables used in the [calendar_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CalendarModel extends Equatable {
  CalendarModel({this.listrectanglesiItemList = const []});

  List<ListrectanglesiItemModel> listrectanglesiItemList;

  CalendarModel copyWith(
      {List<ListrectanglesiItemModel>? listrectanglesiItemList}) {
    return CalendarModel(
      listrectanglesiItemList:
          listrectanglesiItemList ?? this.listrectanglesiItemList,
    );
  }

  @override
  List<Object?> get props => [listrectanglesiItemList];
}

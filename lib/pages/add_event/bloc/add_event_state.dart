// ignore_for_file: must_be_immutable

part of 'add_event_bloc.dart';

/// Represents the state of AddEvent in the application.
class AddEventState extends Equatable {
  AddEventState({
    this.groupnineController,
    this.groupthirteenController,
    this.groupelevenController,
    this.grouptenController,
    this.addEventModelObj,
  });

  TextEditingController? groupnineController;

  TextEditingController? groupthirteenController;

  TextEditingController? groupelevenController;

  TextEditingController? grouptenController;

  AddEventModel? addEventModelObj;

  @override
  List<Object?> get props => [
        groupnineController,
        groupthirteenController,
        groupelevenController,
        grouptenController,
        addEventModelObj,
      ];
  AddEventState copyWith({
    TextEditingController? groupnineController,
    TextEditingController? groupthirteenController,
    TextEditingController? groupelevenController,
    TextEditingController? grouptenController,
    AddEventModel? addEventModelObj,
  }) {
    return AddEventState(
      groupnineController: groupnineController ?? this.groupnineController,
      groupthirteenController:
          groupthirteenController ?? this.groupthirteenController,
      groupelevenController:
          groupelevenController ?? this.groupelevenController,
      grouptenController: grouptenController ?? this.grouptenController,
      addEventModelObj: addEventModelObj ?? this.addEventModelObj,
    );
  }
}

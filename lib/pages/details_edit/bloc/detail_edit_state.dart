import 'package:sardordev/pages/details_edit/model/appnovigation_model.dart';

class DetailsEventState {
  DetailsEventState({this.detailsEventModelObj});

  DetailsEventModel? detailsEventModelObj;

  List<Object?> get props => [
        detailsEventModelObj,
      ];
  DetailsEventState copyWith({DetailsEventModel? detailsEventModelObj}) {
    return DetailsEventState(
      detailsEventModelObj: detailsEventModelObj ?? this.detailsEventModelObj,
    );
  }
}

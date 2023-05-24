 import 'package:event_project/features/home/presentation/event_list/model/event.dart';

extension XEvent on Event{

  String presentableDate() {
    if (endDate?.isNotEmpty ?? false) {
      return "$startDate - $endDate";
    }
    return startDate;
  }

}
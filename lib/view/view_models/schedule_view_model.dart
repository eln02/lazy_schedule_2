import 'package:flutter/cupertino.dart';
import 'package:lazy_schedule_2/domain/use_cases/manage_schedule.dart';

class ScheduleViewModel extends ChangeNotifier{
  final GetSchedule getSchedule;

  ScheduleViewModel({
    required this.getSchedule
});

  get() async{
    var schedule = getSchedule.get();
    return schedule;

  }

  put() async {
    await getSchedule.put();
    notifyListeners();
  }

}

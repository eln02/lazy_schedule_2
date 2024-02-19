import 'package:lazy_schedule_2/data/api/week_schedule_service.dart';
import 'group_service.dart';

class ApiUtil{
  final GroupService _groupService = GroupService();
  final WeekScheduleService _weekScheduleService = WeekScheduleService();
  final String startDate;
  final String endDate;
  final String group;

  ApiUtil({
    required this.startDate,
    required this.endDate,
    required this.group,
  });


  Future<dynamic> getData() async {
    try {
      var groupID = await _groupService.getGroupID(group);
      var data = await _weekScheduleService.getGroupSchedule(groupID, startDate, endDate);
      //print(data);
      return data;
    } catch (e) {
      throw Exception();
    }
  }
}

/*void main() async{
  GroupService gs = GroupService();
  WeekScheduleService ws = WeekScheduleService();
  ApiUtil au = ApiUtil(gs, ws);
  var mas = await au.getData();
}*/


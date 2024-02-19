import 'dart:convert';
import 'package:http/http.dart' as http;

class WeekScheduleService{

  Future<dynamic> getGroupSchedule(groupID, startDate, finishDate) async {
    final response = await http.get(Uri.parse('https://ruz.fa.ru/api/schedule/group/$groupID?start=$startDate&finish=$finishDate&lng=1'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return response.statusCode;
    }
  }

}
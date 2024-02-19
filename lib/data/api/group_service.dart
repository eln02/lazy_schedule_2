import 'dart:convert';
import 'package:http/http.dart' as http;

class GroupService{

  Future<dynamic> getGroupID(groupName) async {
    final response = await http.get(Uri.parse('https://ruz.fa.ru/api/search?term=$groupName&type=group'));
    if (response.statusCode == 200) {
      String groupID = jsonDecode(response.body)[0]["id"];
      return groupID;
    } else {
      return response.statusCode;
    }
  }
}
import 'package:flutter/foundation.dart';
import 'package:lazy_schedule_2/data/storage/drift_for_shedule/lesson_table_mapper.dart';
import '../../api/api_util.dart';
import 'lesson_table.dart';


class Storage extends ChangeNotifier {
  final AppDatabase database;
  final ApiUtil apiUtil;

  Storage({required this.database, required this.apiUtil});

  put() async {
    await clear();
    var data = await apiUtil.getData();
    try {
      for (var i in data) {
        LessonsTableData les = LessonsTableMapper().map(i);
        await database.into(database.lessonsTable).insert(les);
      }
    } catch (e) {
      //print('Error occurred: $e');
    } finally {
      notifyListeners();
    }
  }

  get() async {
    try {
      List<LessonsTableData> allItems = await database.select(database.lessonsTable).get();
      return allItems;
    } catch (e) {
      //print('Error occurred: $e');
      return [];
    }
  }

  clear() async {
    await database.delete(database.lessonsTable).go();
  }

}

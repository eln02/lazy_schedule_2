import 'package:flutter/cupertino.dart';
import 'package:lazy_schedule_2/data/storage/drift_for_shedule/drift_repository.dart';
import '../models/lesson.dart';
import '../models/lesson_mapper.dart';

class GetSchedule extends ChangeNotifier {
  final Storage storage;
  final LessonMapper lessonMapper = LessonMapper();

  GetSchedule({required this.storage});

  get() async {
    var data = await storage.get();
    List<Lesson> lesItems = [];
    for (var lesson in data) {
      lesItems.add(lessonMapper.lessonMap(lesson));
    }
    notifyListeners();
    return lesItems;
  }

  put() {
    storage.put();
    notifyListeners();
  }
}

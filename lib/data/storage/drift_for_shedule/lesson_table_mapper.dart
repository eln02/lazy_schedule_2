import 'package:lazy_schedule_2/data/storage/drift_for_shedule/lesson_table.dart';

class LessonsTableMapper{

  LessonsTableData map(rawLesson){
    return LessonsTableData(
        discipline: rawLesson["discipline"],
        auditorium: rawLesson["auditorium"],
        building: rawLesson["building"],
        date: rawLesson["date"],
        dayOfWeekString: rawLesson["dayOfWeekString"],
        beginLesson: rawLesson["beginLesson"],
        endLesson: rawLesson["endLesson"],
        group: rawLesson["group"].toString(),
        stream: rawLesson["stream"].toString(),
        kindOfWork: rawLesson["kindOfWork"],
        lecturer: rawLesson["lecturer"],
        contentTableOfLessonsName: rawLesson["contentTableOfLessonsName"]);
  }
}
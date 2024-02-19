import '../../data/storage/drift_for_shedule/lesson_table.dart';
import 'lesson.dart';

class LessonMapper{
  lessonMap(LessonsTableData lesTD){
    return Lesson(
        discipline: lesTD.discipline,
        auditorium: lesTD.auditorium,
        building: lesTD.building,
        date: lesTD.date,
        dayOfWeekString: lesTD.dayOfWeekString,
        beginLesson: lesTD.beginLesson,
        endLesson: lesTD.endLesson,
        group: lesTD.group,
        stream: lesTD.stream,
        kindOfWork: lesTD.kindOfWork,
        lecturer: lesTD.lecturer,
        contentTableOfLessonsName: lesTD.contentTableOfLessonsName);
  }
}

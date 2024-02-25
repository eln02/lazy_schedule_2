import 'package:lazy_schedule_2/data/storage/sharedpref_for_settings/shared_repository.dart';
import '../models/lesson.dart';

class LessonFilter{
  final SharedRepository sharedRepository;

  LessonFilter({
    required this.sharedRepository
});

  filter(Lesson lesson) {
    bool condition1 = !(lesson.kindOfWork == 'Лекции' && sharedRepository.getShowLec());
    //не содержится в скрытых преподах
    bool condition2 = !sharedRepository.getHiddenTeachers().contains(lesson.lecturer);
    //не содержится в скрытых предметах
    bool condition3 = !sharedRepository.getHiddenLessons().contains(lesson.discipline);

    return(!(condition1 && condition2 && condition3));
  }

}

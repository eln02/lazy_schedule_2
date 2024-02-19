import 'package:lazy_schedule_2/data/storage/sharedpref_for_settings/shared_repository.dart';
import '../models/lesson.dart';

class LessonFilter{
  final SharedRepository sharedRepository;

  LessonFilter({
    required this.sharedRepository
});

  filter(Lesson lesson) {
    if (!(lesson.kindOfWork == 'Лекции' && sharedRepository.getShowLec())){
      return false;
    }
    return true;
  }

}
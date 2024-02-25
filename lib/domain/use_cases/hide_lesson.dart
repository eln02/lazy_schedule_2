import '../../data/storage/sharedpref_for_settings/shared_repository.dart';

class HideLesson{
  final SharedRepository sharedRepository;

  HideLesson({
    required this.sharedRepository
  });

  hideLesson(String by, id) async{
    if (by == 'lesson_id'){
      await sharedRepository.setHiddenLessons(id);
    } else if (by == 'teacher_id'){
      await sharedRepository.setHiddenTeachers(id);
    }
  }
}
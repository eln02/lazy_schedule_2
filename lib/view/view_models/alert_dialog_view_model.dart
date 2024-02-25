import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/domain/use_cases/hide_lesson.dart';

import '../../domain/models/lesson.dart';

class DialogViewModel extends ChangeNotifier{
  HideLesson hideLesson;

  DialogViewModel({required this.hideLesson});

  hideLessonByID(Lesson lesson){
    hideLesson.hideLesson('lesson_id', lesson.discipline);
    notifyListeners();
  }

  hideLessonByTeacherID(){}

  hideLessonByGroupID(){}


}

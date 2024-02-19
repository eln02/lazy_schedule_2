import 'package:flutter/material.dart';
import '../../../../domain/models/lesson.dart';
import 'lesson_container.dart';

class DaySchedule extends StatefulWidget {
  const DaySchedule({super.key, required this.data, required this.day});

  final List<Lesson> data;
  final String day;

  @override
  State<DaySchedule> createState() => _DayScheduleState();
}

class _DayScheduleState extends State<DaySchedule> {
  List<Lesson> showDaySchedule(List<Lesson> data, String day) {
    return data.where((lesson) => lesson.dayOfWeekString == day).toList();
  }



  @override
  Widget build(BuildContext context) {
    List<Lesson> lessons = showDaySchedule(widget.data, widget.day);
    if (lessons.isEmpty) {
      return const Center(child: Text("Нет пар"));
    } else {
      return ListView(
        children:
            lessons.map((lesson) => LessonContainer(lesson: lesson)).toList(),
      );
    }
  }
}

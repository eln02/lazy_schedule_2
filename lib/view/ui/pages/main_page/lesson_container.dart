import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/storage/sharedpref_for_settings/shared_repository.dart';
import '../../../../domain/use_cases/lesson_filter.dart';
import '../../../../domain/models/lesson.dart';
import 'alert_dialog.dart';

class LessonContainer extends StatelessWidget {
  final Lesson lesson;
  const LessonContainer({super.key,  required this.lesson});

  @override
  Widget build(BuildContext context) {

    var p = Provider.of<SharedRepository>(context, listen: true);
    //Settings set = p.getSettings();
    LessonFilter lf = LessonFilter(sharedRepository: p);
    if (lf.filter(lesson)){
      return Container();
    }

    var group = '';
    if (lesson.group == 'null'){
      group = lesson.stream;
    } else {
      group = lesson.group;
    }
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.grey[300],
              ),
              height: 30,
              width: 30,

              child: Center(child: Text(lesson.contentTableOfLessonsName, style: const TextStyle(
                  fontSize: 14.0),)),
            ),
            const SizedBox(width: 10,),
            Text('${lesson.beginLesson}-${lesson.endLesson}')
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.blue[50],
          ),
          padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
          margin: const EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width,

          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lesson.discipline, softWrap: true,),
                    Text(lesson.kindOfWork, softWrap: true,),
                    Text(lesson.auditorium, softWrap: true,),
                    Text(group, softWrap: true,),
                    Text(lesson.lecturer)
                
                
                  ],
                ),
              ),
              IconButton(onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialog(
                      context: context,
                      onClose: () {
                        Navigator.of(context).pop(); // Закрываем диалог
                      },
                    );
                  },
                );
              }, icon: const Icon(Icons.more_vert), padding: EdgeInsets.zero,)
            ],
          ),
        )
      ],
    );
  }
}


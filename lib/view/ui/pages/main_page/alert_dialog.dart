import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/domain/models/lesson.dart';
import 'package:lazy_schedule_2/domain/use_cases/hide_lesson.dart';
import 'package:lazy_schedule_2/view/view_models/alert_dialog_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../data/storage/sharedpref_for_settings/shared_repository.dart';

class CustomDialog extends StatelessWidget {
  final BuildContext context;
  final VoidCallback onClose;
  final Lesson lesson;

  const CustomDialog({super.key, required this.context, required this.onClose, required this.lesson});

  @override
  Widget build(BuildContext context) {
    var sharedRepository = Provider.of<SharedRepository>(context, listen: true);
    HideLesson hideLesson = HideLesson(sharedRepository: sharedRepository);
    DialogViewModel dialogViewModel = DialogViewModel(hideLesson: hideLesson);
    return AlertDialog(
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),

      title: const Text('Скрыть предмет'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('по названию'),
            onTap: () {
              dialogViewModel.hideLessonByID(lesson);
              onClose(); // Закрываем диалог
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('предмет скрыт'),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('по преподавателю'),
            onTap: () {
              onClose(); // Закрываем диалог
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('предмет скрыт'),
                ),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('по подгруппе'),
            onTap: () {
              onClose(); // Закрываем диалог
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('предмет скрыт'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

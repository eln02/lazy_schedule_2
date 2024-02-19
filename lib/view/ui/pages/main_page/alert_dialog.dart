import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final BuildContext context;
  final VoidCallback onClose;

  const CustomDialog({super.key, required this.context, required this.onClose});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}

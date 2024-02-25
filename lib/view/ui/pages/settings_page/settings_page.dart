import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/storage/sharedpref_for_settings/shared_repository.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController _controller = TextEditingController();
  late SharedRepository f;



  @override
  void initState(){
    super.initState();
    f = Provider.of<SharedRepository>(context, listen: false);
    _controller.text = f.getGroup();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (bool didPop) {
        f.setGroup(_controller.text);

      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Настройки'),
        ),
        body: SafeArea(
          child: Consumer<SharedRepository>(
            builder: (BuildContext context, SharedRepository value, Widget? child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Группа',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextField(
                      controller: _controller,
                    ),
                    ListTileTheme(
                      contentPadding: const EdgeInsets.all(0),
                      child: CheckboxListTile(
                        title: const Text(
                          'Скрыть лекции',
                          style: TextStyle(fontSize: 16),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: value.getShowLec(),
                        onChanged: (bool? val) {
                          value.setShowLec(val ?? false);
                        },
                      ),
                    ),
                    const Text(
                      'Скрытые предметы',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

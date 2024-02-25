import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/data/api/api_util.dart';
import 'package:lazy_schedule_2/domain/use_cases/hide_lesson.dart';
import 'package:lazy_schedule_2/domain/use_cases/manage_schedule.dart';
import 'package:lazy_schedule_2/view/view_models/alert_dialog_view_model.dart';
import 'package:lazy_schedule_2/view/view_models/day_provider.dart';
import 'package:lazy_schedule_2/view/view_models/page_controller.dart';
import 'package:lazy_schedule_2/view/ui/pages/main_page/main_page.dart';
import 'package:lazy_schedule_2/view/ui/pages/settings_page/settings_page.dart';
import 'package:lazy_schedule_2/view/view_models/schedule_view_model.dart';
import 'package:provider/provider.dart';
import 'data/storage/drift_for_shedule/drift_repository.dart';
import 'data/storage/drift_for_shedule/lesson_table.dart';
import 'data/storage/sharedpref_for_settings/shared_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // расхардкодить
    ApiUtil apiUtil = ApiUtil(startDate: "2024.02.19", endDate: "2024.02.25", group: "ПИ21-5");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScheduleViewModel(getSchedule: GetSchedule(storage: Storage(database: AppDatabase(), apiUtil: apiUtil)))),
        ChangeNotifierProvider(create: (_) => DayProvider()),
        ChangeNotifierProvider(create: (_) => PageControllerNotifier()),
        ChangeNotifierProvider(create: (_) => DialogViewModel(hideLesson: HideLesson(sharedRepository: SharedRepository()..init()))),
        ChangeNotifierProvider(create: (_) => SharedRepository()..init()),
      ],
      child: MaterialApp(routes: {
        "/settings": (_) => const SettingsPage(),
      }, debugShowCheckedModeBanner: false, home: const MainPage()),
    );
  }
}

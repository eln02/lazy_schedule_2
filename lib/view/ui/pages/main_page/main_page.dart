import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/domain/use_cases/manage_schedule.dart';
import 'package:lazy_schedule_2/view/ui/pages/main_page/day_schedule.dart';
import 'package:lazy_schedule_2/view/ui/pages/main_page/status_row.dart';
import 'package:lazy_schedule_2/view/ui/pages/main_page/week_row.dart';
import 'package:lazy_schedule_2/view/view_models/schedule_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../data/storage/drift_for_shedule/drift_repository.dart';
import '../../../../domain/models/lesson.dart';
import '../../../state_management/day_provider.dart';
import '../../../state_management/page_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController pageController;


  @override
  Widget build(BuildContext context) {
    final storage = Provider.of<Storage>(context, listen: true);
    var day = Provider.of<DayProvider>(context, listen: false);

    final pageControllerNotifier =
    Provider.of<PageControllerNotifier>(context, listen: false);
    pageController = pageControllerNotifier.pageController;

    final GetSchedule gs = GetSchedule(storage: storage);
    final ScheduleViewModel schedule = ScheduleViewModel(getSchedule: gs);



    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const StatusRow(),
            WeekRow(),
            FutureBuilder(
              //future: gs.get(),
              future: schedule.get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Flexible(child: Center(child: Text("ща ща ща....")));
                } else if (snapshot.hasError) {
                  return Text('Ошибка: ${snapshot.error}');
                } else {
                  List<Lesson> lessons = snapshot.data as List<Lesson>;
                  return Flexible(
                    child: PageView(
                      controller: pageController,
                      onPageChanged: (index) {
                        day.currentDayNumber = index;
                      },
                      children: [
                        DaySchedule(data: lessons, day: 'Пн'),
                        DaySchedule(data: lessons, day: 'Вт'),
                        DaySchedule(data: lessons, day: 'Ср'),
                        DaySchedule(data: lessons, day: 'Чт'),
                        DaySchedule(data: lessons, day: 'Пт'),
                        DaySchedule(data: lessons, day: 'Сб'),
                        DaySchedule(data: lessons, day: 'Вс'),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

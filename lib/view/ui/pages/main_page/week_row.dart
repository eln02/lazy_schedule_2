import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/view/state_management/page_controller.dart';
import 'package:provider/provider.dart';

import '../../../state_management/day_provider.dart';

class WeekRow extends StatefulWidget {
  @override
  _WeekRowState createState() => _WeekRowState();
}

class _WeekRowState extends State<WeekRow> {
  final List<String> weekDays = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
  late DateTime now = DateTime.now();
  late DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));
  late List<int> weekDates = List.generate(7, (index) => startOfWeek.add(Duration(days: index)).day);



  @override
  Widget build(BuildContext context) {
    var day = context.watch<DayProvider>();
    final pageControllerNotifier = Provider.of<PageControllerNotifier>(context, listen: true);



    return SizedBox(
      height: 70,
      child: Row(
        children: List.generate(7, (index) {
          final widgetDay = weekDays[index % weekDays.length];
          return Expanded(
            child: GestureDetector(
              onTap: (){
                day.currentDay = widgetDay;
                pageControllerNotifier.animateToPage(day.dayNumber);
                },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: (day.currentDay == widgetDay) ? Colors.blue : Colors.grey[300],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        weekDates[index % weekDays.length].toString(),
                        style: TextStyle(fontSize: 16.0, color: (day.currentDay == widgetDay) ? Colors.white : Colors.black),
                      ),
                      Text(
                        widgetDay,
                        style: TextStyle(fontSize: 12.0, color: (day.currentDay == widgetDay) ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

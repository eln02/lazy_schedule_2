import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/data/storage/sharedpref_for_settings/shared_repository.dart';
import 'package:lazy_schedule_2/view/view_models/schedule_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../data/storage/drift_for_shedule/drift_repository.dart';
import '../../../../domain/use_cases/manage_schedule.dart';
import '../../../state_management/day_provider.dart';
import '../../../state_management/page_controller.dart';

class StatusRow extends StatefulWidget {
  const StatusRow({super.key});

  @override
  State<StatusRow> createState() => _StatusRowState();
}

class _StatusRowState extends State<StatusRow> {
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    //final storage = Provider.of<Storage>(context, listen: true);
    final day = Provider.of<DayProvider>(context, listen: false);

    final pageControllerNotifier =
        Provider.of<PageControllerNotifier>(context, listen: false);
    pageController = pageControllerNotifier.pageController;


    //final GetSchedule gs = GetSchedule(storage: storage);
    //final ScheduleViewModel sc = ScheduleViewModel(getSchedule: gs);
    final schedule = Provider.of<ScheduleViewModel>(context, listen: true);

    getw() async {
      schedule.put();
    }

    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Consumer<SharedRepository>(
            builder: (BuildContext context, SharedRepository value, Widget? child) {
              return Row(
                children: [
                  Text(
                    "Последнее обновление в ${value.getTime()}",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        getw();
                        value.setTime();
                        pageControllerNotifier.setPage(day.dayNumber);
                      },
                      icon: Icon(
                        Icons.refresh,
                        size: 20,
                        color: Colors.grey[500],
                      )),
                ],
              );
            },
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
    );
  }
}

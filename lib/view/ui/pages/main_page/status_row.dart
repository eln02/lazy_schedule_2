import 'package:flutter/material.dart';
import 'package:lazy_schedule_2/data/storage/sharedpref_for_settings/shared_repository.dart';
import 'package:lazy_schedule_2/view/view_models/schedule_view_model.dart';
import 'package:provider/provider.dart';
import '../../../view_models/day_provider.dart';
import '../../../view_models/page_controller.dart';

class StatusRow extends StatefulWidget {
  const StatusRow({super.key});

  @override
  State<StatusRow> createState() => _StatusRowState();
}

class _StatusRowState extends State<StatusRow> {
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    final day = Provider.of<DayProvider>(context, listen: false);

    final pageControllerNotifier =
        Provider.of<PageControllerNotifier>(context, listen: false);
    pageController = pageControllerNotifier.pageController;


    final schedule = Provider.of<ScheduleViewModel>(context, listen: true);

    updateData() async {
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
                        updateData();
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

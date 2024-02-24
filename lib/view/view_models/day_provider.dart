import 'package:flutter/material.dart';

class DayProvider extends ChangeNotifier {
  static const List<String> _daysOfWeek = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];

  String _currentDay;

  DayProvider() : _currentDay = _daysOfWeek[DateTime.now().weekday - 1];

  String get currentDay => _currentDay;

  int get dayNumber => _daysOfWeek.indexOf(_currentDay);

  set currentDay(String value) {
    if (_currentDay != value) {
      _currentDay = value;
      notifyListeners();
    }
  }

  set currentDayNumber(int value) {
    String val = _daysOfWeek[value];
    currentDay = val;
  }

}

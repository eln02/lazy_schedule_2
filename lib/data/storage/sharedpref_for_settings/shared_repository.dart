import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedRepository extends ChangeNotifier {
  late final SharedPreferences _sharedPrefs;

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
    notifyListeners();
  }

  Future<void> setTime() async {
    await _sharedPrefs.setString(
        'time', DateTime.now().toString().substring(10, 19));
    notifyListeners();
  }

  String getTime() {
    try {
      return _sharedPrefs.getString('time') ?? "--:--";
    } catch (e) {
      return "--:--";
    }
  }

  Future<void> setShowLec(bool value) async {
    await _sharedPrefs.setBool(
        'show_lec', value);
    notifyListeners();
  }

  bool getShowLec() {
    try {
      return _sharedPrefs.getBool('show_lec') ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<void> setGroup(String group) async {
    await _sharedPrefs.setString(
        'group', group);
    notifyListeners();
  }

  String getGroup() {
    try {
      return _sharedPrefs.getString('group') ?? "";
    } catch (e) {
      return "";
    }
  }

  List<String> getHiddenLessons() {
    try {
      return _sharedPrefs.getStringList('hide_les') ?? [];
    } catch (e) {
      return [];
    }
  }


  Future<void> setHiddenLessons(String lessonID) async{
    var mas = getHiddenLessons();
    mas.add(lessonID);
    await _sharedPrefs.setStringList('items', mas);
  }

}

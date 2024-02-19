import 'package:flutter/material.dart';

class PageControllerNotifier extends ChangeNotifier {
  PageController _pageController = PageController(initialPage: DateTime.now().weekday - 1);

  PageController get pageController => _pageController;

  void animateToPage(int page) {
    _pageController.animateToPage(page, duration: const Duration(microseconds: 500), curve: Curves.ease);
    notifyListeners();
  }

  void setPage(int day){
    _pageController = PageController(initialPage: day);
    notifyListeners();
  }
}

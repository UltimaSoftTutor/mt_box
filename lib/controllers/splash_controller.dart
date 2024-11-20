import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  int index = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );

  updateIndexByClicking(int i) {
    index = i;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);

    notifyListeners();
  }

  updateIndexByScrolling(int i) {
    index = i;
    notifyListeners();
  }
}

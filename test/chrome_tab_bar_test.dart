import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chrome_tab_bar/chrome_tab_bar.dart';

void main() {
  ChromeTabBar(
    tabSelectedColor: Colors.white,
    backgroundColor: Colors.blue,
    tabsList: const [
      SizedBox(),
      SizedBox(),
      SizedBox(),
      SizedBox(),
      SizedBox(),
    ],
    tabText: const [
      "Tab One",
      "Tab Two",
      "Tab Three",
      "Tab Four",
      "Tab Five",
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class MyCalculator {
  static double getScreenWidth(double size) {
    return MediaQuery.of(Get.context!).size.width * size / 100;
  }

  static double getScreenHeight(double size) {
    return MediaQuery.of(Get.context!).size.height * size / 100;
  }
}

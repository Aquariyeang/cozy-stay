import 'dart:ffi';

import 'package:cozy_stay/utils/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final _storage = MyLocalStorage();
  final _key = 'isDarkMode';
  RxBool isDarkMode = false.obs;
  @override
  void onInit() {
    isDarkMode.value = _storage.readData(_key) ?? false;
    _applyTheme(isDarkMode.value);
    super.onInit();
  }

  void themeToggle() {
    isDarkMode.value = !isDarkMode.value;
    _storage.saveData(_key, isDarkMode.value);
    _applyTheme(isDarkMode.value);
  }

  void _applyTheme(bool isDark) {
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}

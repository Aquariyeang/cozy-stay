import 'package:cozy_stay/app.dart';
import 'package:cozy_stay/utils/theme/theme_controller.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/ratio_controller.dart';

void main() async {
  await GetStorage.init();
  Get.put(RatioController());
  Get.put(ThemeController());
  runApp(MyApp());
}

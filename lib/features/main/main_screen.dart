import 'package:cozy_stay/common/widgets/templates/app_layout_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return AppLayoutTemplate(
      mobile: Obx(() {
        return IndexedStack(
          index: mainController.selectedIndex.value,
          children: mainController.screens,
        );
      }),
    );
  }
}

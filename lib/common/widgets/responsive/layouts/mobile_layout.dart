import 'package:cozy_stay/common/widgets/appbars/background_image_appbar.dart';
import 'package:cozy_stay/common/widgets/appbars/main_appbar.dart';
import 'package:cozy_stay/common/widgets/bottom_nav_bar/widgets/bottom_nav_bar.dart';
import 'package:cozy_stay/common/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../../../utils/theme/theme_controller.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, this.mobile});
  Widget? mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: mobile,
      bottomNavigationBar: MyMainBottomNavBar(),
    );
  }
}

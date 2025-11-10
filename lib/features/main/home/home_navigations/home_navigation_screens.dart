import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import '../../../../../routes/routes.dart';
import '../../../../../test/test.dart';
import '../../../../../utils/constants/navigation_id.dart';
import '../home_screen.dart';

class MyHomeNavigation extends StatelessWidget {
  MyHomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(MyNavIDs.home),
      initialRoute: MyRoute.home,
      onGenerateRoute: (settings) {
        if (settings.name == MyRoute.home) {
          return GetPageRoute(settings: settings, page: () => HomeScreen());
        } else if (settings.name == MyRoute.test) {
          return GetPageRoute(
            transitionDuration: Duration(milliseconds: 200),
            transition: Transition.cupertino,
            settings: settings,
            page: () => TestTabBar(),
          );
        } else {
          return GetPageRoute(settings: settings, page: () => HomeScreen());
        }
      },
    );
  }
}

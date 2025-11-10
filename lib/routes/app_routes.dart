import 'package:cozy_stay/routes/routes.dart';
import 'package:get/get.dart';
import '../features/main/main_binding.dart';
import '../features/main/main_screen.dart';
import 'modules/main_routes.dart';

class AppRoute {
  static List<GetPage> pages = [
    GetPage(
      name: MyRoute.main,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    ...MainRoute.pages,
  ];
}

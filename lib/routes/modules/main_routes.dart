import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../features/main/booking/booking_screen.dart';
import '../../features/main/profile/profile_screen.dart';
import '../../features/main/save/save_screen.dart';
import '../routes.dart';

class MainRoute {
  static List<GetPage> pages = [
    GetPage(name: MyRoute.booking, page: () => BookingScreen()),
    GetPage(name: MyRoute.save, page: () => SaveScreen()),
    GetPage(name: MyRoute.profile, page: () => ProfileScreen()),
  ];
}

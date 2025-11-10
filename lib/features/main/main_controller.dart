import 'package:cozy_stay/features/main/profile/profile_screen.dart';
import 'package:cozy_stay/features/main/save/save_screen.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'booking/booking_screen.dart';
import 'home/home_navigations/home_navigation_screens.dart';

class MainController extends GetxController {
  var selectedIndex = 0.obs;
  var screens = [
    MyHomeNavigation(),
    BookingScreen(),
    SaveScreen(),
    ProfileScreen(),
  ];
  void onTap(value) {
    selectedIndex.value = value;
  }
}

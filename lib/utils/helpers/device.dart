import 'package:cozy_stay/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceUtils {
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= MySize.desktopScreenSize;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= MySize.tabletScreenSize &&
        MediaQuery.of(context).size.width < MySize.desktopScreenSize;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < MySize.mobileScreenSize;
  }
}

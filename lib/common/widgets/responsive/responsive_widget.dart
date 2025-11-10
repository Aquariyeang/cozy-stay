import 'package:cozy_stay/controllers/ratio_controller.dart';
import 'package:cozy_stay/utils/constants/sizes.dart';
import 'package:cozy_stay/utils/helpers/device.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResponsiveWidget extends StatelessWidget {
  ResponsiveWidget({
    super.key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  });
  Widget desktop;
  Widget tablet;
  Widget mobile;
  @override
  Widget build(BuildContext context) {
    final device = Get.find<RatioController>();
    return LayoutBuilder(
      builder: (context, constrains) {
        if (device.isDesktop) {
          return desktop;
        } else if (device.isTablet) {
          return tablet;
        } else if (device.isMobile) {
          return mobile;
        } else {
          return Container();
        }
      },
    );
  }
}

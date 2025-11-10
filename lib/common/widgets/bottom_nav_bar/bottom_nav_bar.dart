import 'package:cozy_stay/common/widgets/icons/svg_icon.dart';
import 'package:cozy_stay/utils/constants/images.dart';
import 'package:cozy_stay/utils/extensions/text_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import '../../../features/main/main_controller.dart';
import '../../../utils/constants/colors.dart';
import 'widgets/bottom_nav_bar.dart';

class MyMainBottomNavBar extends StatelessWidget {
  MyMainBottomNavBar({super.key});
  final mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      titleTextStyle: context.txt.bodyLarge!.apply(
        color: MyColor.blueBerrySoda,
      ),

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      color: MyColor.primary,
      onChangePage: (e) {
        mainController.onTap(e);
      },
      items: [
        ItemNavigationView(
          childBefore: MySvgIcon(assetIcon: MyImageAsset.home),
          childAfter: MySvgIcon(assetIcon: MyImageAsset.homeBold),
          title: 'Home',
        ),
        ItemNavigationView(
          badgeCount: 1,
          title: 'Booking',
          childBefore: MySvgIcon(assetIcon: MyImageAsset.booking),
          childAfter: MySvgIcon(assetIcon: MyImageAsset.bookingBold),
        ),
        ItemNavigationView(
          title: 'Favorite',
          childBefore: MySvgIcon(assetIcon: MyImageAsset.save),
          childAfter: MySvgIcon(assetIcon: MyImageAsset.saveBold),
        ),
        ItemNavigationView(
          title: 'Profile',
          childBefore: MySvgIcon(assetIcon: MyImageAsset.profile),
          childAfter: MySvgIcon(assetIcon: MyImageAsset.profileBold),
        ),
      ],
    );
  }
}

import 'package:cozy_stay/common/widgets/icons/svg_icon.dart';
import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:cozy_stay/utils/constants/sizes.dart';
import 'package:cozy_stay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../features/main/main_controller.dart';
import '../../../../utils/extensions/text_theme_ext.dart';
import 'badge.dart';

class SideBarMenuItem extends StatelessWidget {
  SideBarMenuItem({
    super.key,
    required this.title,
    required this.assetIcon,
    required this.index,
    this.iconSize = 30,
    this.badgeCount,
  });
  String title;
  String assetIcon;
  int index;
  double iconSize;
  int? badgeCount;
  final mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    final isDarkMode = MyHelperFunction.isDarkMode(context);
    return Obx(() {
      final isSelected = mainController.selectedIndex.value == index;
      return GestureDetector(
        onTap: () {
          mainController.onTap(index);
        },
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              //---------------Container----------------//
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  //---------------Border Side----------------//
                  border: Border(
                    left: BorderSide(
                      width: 10,
                      color: _buildBackgroundColor(isSelected, isDarkMode),
                    ),
                  ),
                  //---------------Border Radius----------------//
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(MySize.lgRadius),
                  ),
                  //---------------Container Color----------------//
                  color: _buildBackgroundColor(
                    isSelected,
                    isDarkMode,
                    color: MyColor.primary.withOpacity(0.2),
                  ),
                ),
                //---------------Row----------------//
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //---------------Icon----------------//
                    MySvgIcon(
                      assetIcon: assetIcon,
                      size: iconSize,
                      color: _buildTextColor(isSelected, isDarkMode),
                    ),
                    //---------------Title----------------//
                    Text(
                      title,
                      style: context.txt.bodyLarge!.apply(
                        color: _buildTextColor(isSelected, isDarkMode),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ),
            //---------------Badge----------------//
            Positioned(
              right: 0,
              top: 0,
              child: badgeCount != null
                  ? BuildBadge(badgeCount: badgeCount)
                  : SizedBox(),
            ),
          ],
        ),
      );
    });
  }

  //---------------Build BackgroundColor ----------------//
  Color _buildBackgroundColor(
    bool isSelected,
    bool isDarkMode, {
    Color? color,
  }) {
    return isSelected
        ? color != null
              ? color
              : MyColor.primary
        : isDarkMode
        ? MyColor.dark2
        : MyColor.lynxWhite;
  }

  //---------------Build Text Color----------------//
  Color _buildTextColor(bool isSelected, bool isDarkMode) {
    return isSelected
        ? MyColor.primary
        : isDarkMode
        ? MyColor.lynxWhite
        : MyColor.mazarineBlue;
  }
}

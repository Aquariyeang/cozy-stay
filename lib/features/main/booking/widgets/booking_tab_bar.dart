import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:cozy_stay/utils/extensions/size_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/extensions/text_theme_ext.dart';
import '../../../../utils/helpers/size_calculator.dart';

class MyBookingTabBar extends StatelessWidget implements PreferredSizeWidget {
  MyBookingTabBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          MyImageAsset.angkor,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned(
          right: 10,
          left: 10,
          bottom: -20,
          child: SegmentedTabControl(
            tabPadding: EdgeInsets.all(5),
            height: context.h(50),
            barDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),

            tabTextColor: MyColor.mazarineBlue,
            textStyle: context.txt.bodyLarge,
            tabs: [
              SegmentTab(label: "Completed", color: MyColor.green),
              SegmentTab(label: "Pending", color: MyColor.orange),
              SegmentTab(label: "Canceled", color: MyColor.red),
            ],
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyCalculator.getScreenHeight(10));
}

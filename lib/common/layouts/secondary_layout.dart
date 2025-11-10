import 'package:cozy_stay/common/widgets/appbars/background_color_appbar.dart';
import 'package:cozy_stay/common/widgets/containers/rounded_container.dart';
import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:cozy_stay/utils/constants/shadow.dart';
import 'package:cozy_stay/utils/helpers/size_calculator.dart';
import 'package:flutter/material.dart';

class MySecondaryLayout extends StatelessWidget {
  MySecondaryLayout({super.key, required this.child});
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          //--------------BackgroundColor AppBar----------------//
          MyBackgroundColorAppbar(),
          //--------------Container in the middle----------------//
          Positioned(
            right: MyCalculator.getScreenWidth(3),
            left: MyCalculator.getScreenWidth(3),
            top: MyCalculator.getScreenHeight(13),
            child: MyRoundedContainer(
              color: MyColor.white,
              boxShadow: MyShadow.shadow1,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

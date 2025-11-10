import 'package:cozy_stay/common/widgets/containers/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/size_calculator.dart';

class MyBackgroundColorAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const MyBackgroundColorAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    //--------------Container----------------//
    return Container(
      height: MyCalculator.getScreenHeight(25),
      width: double.infinity,
      color: MyColor.primary,
      child: Stack(
        children: [
          //--------------Top Circle Container----------------//
          Positioned(
            right: -MyCalculator.getScreenWidth(17),
            top: -MyCalculator.getScreenWidth(17),
            child: MyCircleContainer(
              size: MyCalculator.getScreenWidth(40),
              color: MyColor.lynxWhite.withOpacity(0.20),
            ),
          ),
          //--------------Bottom Circle Container----------------//
          Positioned(
            left: -MyCalculator.getScreenWidth(15),
            bottom: -MyCalculator.getScreenWidth(20),
            child: MyCircleContainer(
              size: MyCalculator.getScreenWidth(40),
              color: MyColor.lynxWhite.withOpacity(0.20),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyCalculator.getScreenHeight(25));
}

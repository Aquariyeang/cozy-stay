import 'package:cozy_stay/utils/constants/images.dart';
import 'package:cozy_stay/utils/helpers/size_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../curve_edge/curve_image.dart';

class MyBackgroundImageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  MyBackgroundImageAppbar({super.key, this.applyEdge = true});
  bool applyEdge;

  @override
  Widget build(BuildContext context) {
    return applyEdge
        ? MyCurveImage(assetImage: MyImageAsset.angkor)
        : Image.asset(
            MyImageAsset.angkor,
            width: double.infinity,
            fit: BoxFit.cover,
          );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyCalculator.getScreenHeight(10));
}

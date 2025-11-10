import 'package:cozy_stay/utils/constants/images.dart';
import 'package:cozy_stay/utils/constants/sizes.dart';
import 'package:cozy_stay/utils/extensions/size_ext.dart';
import 'package:cozy_stay/utils/helpers/size_calculator.dart';
import 'package:flutter/material.dart';

import '../../sidebar/sidebar.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, this.tablet});
  Widget? tablet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(width: MyCalculator.getScreenWidth(20), child: MySideBar()),
          Expanded(child: tablet ?? SizedBox()),
        ],
      ),
    );
  }
}

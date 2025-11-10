import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyDrawerTheme {
  static DrawerThemeData lightDrawerTheme = DrawerThemeData(
    backgroundColor: Colors.white, // drawer background
    shape: Border(right: BorderSide(width: 1, color: MyColor.grey1)),
  );
  static DrawerThemeData darkDrawerTheme = DrawerThemeData(
    backgroundColor: MyColor.dark4, // drawer background
    shape: Border(
      right: BorderSide(width: 0.5, color: MyColor.grey1.withOpacity(0.5)),
    ),
  );
}

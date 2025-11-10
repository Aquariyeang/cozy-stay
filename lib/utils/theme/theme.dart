import 'package:cozy_stay/utils/theme/custom_theme/appbar_theme.dart';
import 'package:cozy_stay/utils/theme/custom_theme/drawer_theme.dart';
import 'package:cozy_stay/utils/theme/custom_theme/input_decoration_theme.dart';
import 'package:cozy_stay/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    fontFamily: 'Outfit',
    brightness: Brightness.light,
    drawerTheme: MyDrawerTheme.lightDrawerTheme,
    scaffoldBackgroundColor: MyColor.lynxWhite,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    textTheme: MyTextTheme.lightTextTheme(context),
    inputDecorationTheme: MyInputDecorationTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    fontFamily: 'Outfit',
    brightness: Brightness.dark,
    drawerTheme: MyDrawerTheme.darkDrawerTheme,
    scaffoldBackgroundColor: MyColor.dark2,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    textTheme: MyTextTheme.darkTextTheme(context),
    inputDecorationTheme: MyInputDecorationTheme.darkInputDecorationTheme,
  );
}

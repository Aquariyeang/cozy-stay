import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyShadow {
  static BoxShadow shadow1 = BoxShadow(
    color: MyColor.primary.withOpacity(0.05),
    offset: Offset(0, 4),
    spreadRadius: 0,
    blurRadius: 30,
  );
  static BoxShadow cardShadow = BoxShadow(
    color: MyColor.black.withOpacity(0.01),
    offset: Offset(0, 4),
    spreadRadius: 0,
    blurRadius: 30,
  );
}

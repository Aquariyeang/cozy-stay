import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:cozy_stay/utils/constants/font_size.dart';
import 'package:cozy_stay/utils/constants/sizes.dart';
import 'package:cozy_stay/utils/extensions/text_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyInputDecorationTheme {
  MyInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    contentPadding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
    labelStyle: const TextStyle().copyWith(
      fontSize: Get.context?.txt.labelMedium?.fontSize,
      color: Colors.black,
    ),
    hintStyle: const TextStyle().copyWith(fontSize: 12, color: MyColor.grey1),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderSide: BorderSide(
        width: 1,
        color: MyColor.grey1,
      ), // Scaled border width
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySize.lgRadius),
      borderSide: BorderSide(
        width: 1,
        color: MyColor.grey1,
      ), // Scaled border width
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySize.lgRadius.r),
      borderSide: BorderSide(
        width: 1.w,
        color: MyColor.grey1,
      ), // Scaled border width
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MySize.lgRadius.r,
      ), // Scaled border radius
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.red,
      ), // Scaled border width
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySize.lgRadius.r),
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.orange,
      ), // Scaled border width
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
    ), // Scaled font size
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
    ), // Scaled font size
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MySize.lgRadius.r,
      ), // Scaled border radius
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.grey,
      ), // Scaled border width
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MySize.lgRadius.r,
      ), // Scaled border radius
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.grey,
      ), // Scaled border width
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MySize.lgRadius.r,
      ), // Scaled border radius
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.grey,
      ), // Scaled border width
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MySize.lgRadius.r,
      ), // Scaled border radius
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.red,
      ), // Scaled border width
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MySize.lgRadius.r,
      ), // Scaled border radius
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.orange,
      ), // Scaled border width
    ),
  );
}

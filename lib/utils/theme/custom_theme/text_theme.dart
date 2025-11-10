import 'package:flutter/material.dart';
import 'package:cozy_stay/utils/constants/colors.dart';

enum ScreenSize { small, medium, large }

ScreenSize getScreenSize(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 600) return ScreenSize.small; // phones
  if (width < 1380) return ScreenSize.medium; // tablets
  return ScreenSize.large; // desktop / large tablets
}

double responsiveFontSize(
  BuildContext context, {
  required double small,
  required double medium,
  required double large,
}) {
  switch (getScreenSize(context)) {
    case ScreenSize.small:
      return small;
    case ScreenSize.medium:
      return medium;
    case ScreenSize.large:
      return large;
  }
}

class MyTextTheme {
  MyTextTheme._();

  static TextTheme lightTextTheme(BuildContext context) => TextTheme(
    // Headline
    headlineLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 24, medium: 28, large: 32),
      fontWeight: FontWeight.w700,
      color: MyColor.picoVoid,
    ),
    headlineMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 22, medium: 26, large: 30),
      fontWeight: FontWeight.w600,
      color: MyColor.mazarineBlue,
    ),
    headlineSmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 20, medium: 24, large: 28),
      fontWeight: FontWeight.w500,
      color: MyColor.mazarineBlue,
    ),

    // Title
    titleLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 20, medium: 22, large: 26),
      fontWeight: FontWeight.w600,
      color: MyColor.mazarineBlue,
    ),
    titleMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 18, medium: 20, large: 24),
      fontWeight: FontWeight.w600,
      color: MyColor.mazarineBlue,
    ),
    titleSmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 16, medium: 18, large: 22),
      fontWeight: FontWeight.w500,
      color: MyColor.mazarineBlue,
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 16, medium: 18, large: 20),
      fontWeight: FontWeight.w500,
      color: MyColor.mazarineBlue,
    ),
    bodyMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 14, medium: 16, large: 18),
      fontWeight: FontWeight.normal,
      color: MyColor.dark4,
    ),
    bodySmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 12, medium: 14, large: 16),
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),

    // Label
    labelLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 14, medium: 16, large: 18),
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 12, medium: 14, large: 16),
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.5),
    ),
    labelSmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 10, medium: 12, large: 14),
      fontWeight: FontWeight.normal,
      color: MyColor.black,
    ),
  );

  static TextTheme darkTextTheme(BuildContext context) => TextTheme(
    // Headline
    headlineLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 24, medium: 28, large: 32),
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 22, medium: 26, large: 30),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 20, medium: 24, large: 28),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    // Title
    titleLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 20, medium: 22, large: 26),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 18, medium: 20, large: 24),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 16, medium: 18, large: 22),
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 16, medium: 18, large: 20),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 14, medium: 16, large: 18),
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 12, medium: 14, large: 16),
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),

    // Label
    labelLarge: TextStyle(
      fontSize: responsiveFontSize(context, small: 14, medium: 16, large: 18),
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: responsiveFontSize(context, small: 12, medium: 14, large: 16),
      fontWeight: FontWeight.normal,
      color: Colors.white.withOpacity(0.5),
    ),
    labelSmall: TextStyle(
      fontSize: responsiveFontSize(context, small: 10, medium: 12, large: 14),
      fontWeight: FontWeight.normal,
      color: MyColor.white,
    ),
  );
}

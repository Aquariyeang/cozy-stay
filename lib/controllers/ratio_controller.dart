import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// RatioController handles responsive scaling for fonts, sizes, padding, margin, and radius.
/// Works for Mobile, Tablet, Web, Desktop.
class RatioController extends GetxController {
  /// Singleton shortcut
  static RatioController get to => Get.find<RatioController>();

  /// Detect if device is tablet
  bool get isTablet => ScreenUtil().screenWidth >= 600;

  /// Detect if device is mobile
  bool get isMobile =>
      !isTablet &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);

  /// Detect if device is desktop
  bool get isDesktop =>
      defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS;

  /// Detect if device is web
  bool get isWeb => kIsWeb;

  /// General scaling ratio for sizes, icons, padding, radius
  double get generalRatio {
    double width = ScreenUtil().screenWidth;
    double height = ScreenUtil().screenHeight;
    double ratio = (width + height) / 2 / 750;
    if (isTablet) ratio *= 1.05;
    if (isMobile) ratio *= 1.1;
    return ratio;
  }

  /// Scale general size (padding, icon, width, height)
  double scaledSize(double baseSize) => (baseSize * generalRatio);

  /// Scale radius
  double scaledRadius(double baseRadius) => (baseRadius * generalRatio);

  /// Scale padding
  double scaledPadding(double basePadding) => (basePadding * generalRatio);

  /// Scale width
  double scaledWidth(double baseWidth) => (baseWidth * generalRatio);

  /// Scale height
  double scaledHeight(double baseHeight) => (baseHeight * generalRatio);
}

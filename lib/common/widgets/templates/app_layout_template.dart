import 'package:cozy_stay/common/widgets/responsive/responsive_widget.dart';
import 'package:flutter/cupertino.dart';

import '../responsive/layouts/mobile_layout.dart';
import '../responsive/layouts/tablet_layout.dart';

class AppLayoutTemplate extends StatelessWidget {
  AppLayoutTemplate({
    super.key,
    this.desktop,
    this.tablet,
    required this.mobile,
    this.useLayout = true,
  });
  Widget? desktop;
  Widget mobile;
  Widget? tablet;
  bool useLayout;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: useLayout ? MobileLayout(mobile: mobile) : mobile,
      tablet: useLayout
          ? TabletLayout(tablet: tablet ?? mobile)
          : tablet ?? mobile,
      desktop: useLayout
          ? TabletLayout(tablet: tablet ?? mobile)
          : desktop ?? tablet ?? mobile ?? SizedBox(),
    );
  }
}

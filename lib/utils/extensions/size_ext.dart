import 'package:flutter/material.dart';

import '../../controllers/ratio_controller.dart';

extension ContextSizeExt on BuildContext {
  RatioController get ratio => RatioController.to;
  double w(double size) => ratio.scaledWidth(size);
  double h(double size) => ratio.scaledHeight(size);
  double r(double radius) => ratio.scaledRadius(radius);
  double p(double padding) => ratio.scaledPadding(padding);
}

import 'package:flutter/cupertino.dart';

import '../../../utils/constants/shadow.dart';

class MyRoundedContainer extends StatelessWidget {
  MyRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.child,
    this.padding = const EdgeInsets.all(15),
    this.radius = 12,
    BoxShadow? boxShadow,
  }) : boxShadow = boxShadow ?? MyShadow.shadow1;
  double? width, height;
  Color? color;
  double radius;
  Widget? child;
  EdgeInsetsGeometry? padding;

  final BoxShadow boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [boxShadow],
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

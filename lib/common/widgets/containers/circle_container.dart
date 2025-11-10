import 'package:flutter/cupertino.dart';

class MyCircleContainer extends StatelessWidget {
  MyCircleContainer({
    super.key,
    this.child,
    this.size,
    this.color,
    this.padding,
  });
  Widget? child;
  double? size;
  Color? color;
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: padding,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: child,
    );
  }
}

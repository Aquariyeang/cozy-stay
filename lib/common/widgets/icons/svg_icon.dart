import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySvgIcon extends StatelessWidget {
  MySvgIcon({super.key, required this.assetIcon, this.size = 25, this.color});
  String assetIcon;
  double size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetIcon, width: size, height: size, color: color);
  }
}

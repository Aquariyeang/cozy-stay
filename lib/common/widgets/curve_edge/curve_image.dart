import 'package:flutter/cupertino.dart';
import 'curve_edge.dart';

class MyCurveImage extends StatelessWidget {
  MyCurveImage({
    super.key,
    required this.assetImage,
    this.height,
    this.useCurve = true,
  });
  String assetImage;
  double? height;
  bool useCurve;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: useCurve ? MyCustomClipPath() : null,
      child: Image.asset(
        assetImage,
        height: height,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

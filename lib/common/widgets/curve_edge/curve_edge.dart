import 'package:flutter/cupertino.dart';

class MyCustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    Offset first1 = Offset(0, size.height - 20);
    Offset first2 = Offset(20, size.height - 20);
    path.quadraticBezierTo(first1.dx, first1.dy, first2.dx, first2.dy);

    ///
    Offset second1 = Offset(size.width - 20, size.height - 20);
    path.quadraticBezierTo(second1.dx, second1.dy, second1.dx, second1.dy);

    ///
    Offset third1 = Offset(size.width, size.height - 20);
    Offset third2 = Offset(size.width, size.height);
    path.quadraticBezierTo(third1.dx, third1.dy, third2.dx, third2.dy);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';
import '../../utils/constants/enum.dart';
import 'primary_layout.dart';
import 'secondary_layout.dart';

class LayoutSelector extends StatelessWidget {
  final LayoutType layoutType;
  final Widget child;
  const LayoutSelector({
    super.key,
    required this.layoutType,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return switch (layoutType) {
      LayoutType.primary => MyPrimaryLayout(child: child),
      LayoutType.secondary => MySecondaryLayout(child: child),
    };
  }
}

import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';

class TestTabBar extends StatelessWidget {
  const TestTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SegmentedTabControl(
        tabs: [
          SegmentTab(label: "Home"),
          SegmentTab(label: "Home"),
          SegmentTab(label: "Home"),
        ],
      ),
    );
  }
}

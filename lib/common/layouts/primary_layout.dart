import 'package:cozy_stay/common/widgets/curve_edge/curve_image.dart';
import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:cozy_stay/utils/constants/images.dart';
import 'package:cozy_stay/utils/helpers/size_calculator.dart';
import 'package:flutter/material.dart';

import '../../utils/extensions/text_theme_ext.dart';

class MyPrimaryLayout extends StatelessWidget {
  MyPrimaryLayout({
    super.key,
    required this.child,
    this.title,
    this.applyEdge = true,
  });
  Widget child;
  bool applyEdge;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: CustomScrollView(
        slivers: [
          //--------------SliverAppBar-------------//
          SliverAppBar(
            pinned: true,
            backgroundColor: MyColor.white,
            surfaceTintColor: MyColor.white,
            expandedHeight: MyCalculator.getScreenHeight(15),
            //--------------CurveAngkorImage-------------//
            flexibleSpace: MyCurveImage(assetImage: MyImageAsset.angkor),
          ),
          //--------------BoxAdapter-------------//
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title ?? '', style: context.txt.titleLarge),
                  child,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

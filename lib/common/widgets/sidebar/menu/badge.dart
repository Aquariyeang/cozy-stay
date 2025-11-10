import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/extensions/text_theme_ext.dart';
import '../../containers/circle_container.dart';

class BuildBadge extends StatelessWidget {
  const BuildBadge({super.key, required this.badgeCount});

  final int? badgeCount;

  @override
  Widget build(BuildContext context) {
    return MyCircleContainer(
      padding: EdgeInsets.all(5),
      color: MyColor.red,
      child: Center(
        child: Text(
          "$badgeCount",
          style: context.txt.labelSmall!.apply(color: MyColor.lynxWhite),
        ),
      ),
    );
  }
}

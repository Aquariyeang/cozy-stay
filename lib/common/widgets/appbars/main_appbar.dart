import 'package:cozy_stay/utils/constants/colors.dart';
import 'package:cozy_stay/utils/constants/images.dart';
import 'package:cozy_stay/utils/constants/shadow.dart';
import 'package:cozy_stay/utils/extensions/size_ext.dart';
import 'package:cozy_stay/utils/helpers/device.dart';
import 'package:cozy_stay/utils/helpers/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../utils/extensions/text_theme_ext.dart';

class MyMainAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyMainAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = DeviceUtils.isMobile(context);
    return Container(
      decoration: BoxDecoration(boxShadow: [MyShadow.shadow1]),
      child: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        //---------------Logo Leading Image------------------//
        leading: isMobile
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Image.asset(MyImageAsset.logo),
              )
            : SizedBox(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //---------------TextField as Title------------------//
            _BuildSearchBar(),
            SizedBox(width: 10),
            //---------------Filter Button------------------//
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                  color: MyColor.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(MyImageAsset.filterIcon),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _BuildSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isMobile = DeviceUtils.isMobile(context);
    return isMobile
        ? Expanded(
            child: SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: context.txt.bodyLarge!.apply(color: MyColor.grey2),
                  hintText: "Search Here",
                  prefixIcon: Icon(Icons.search, color: MyColor.grey1),
                ),
              ),
            ),
          )
        : SizedBox(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Here",
                hintStyle: context.txt.bodyLarge!.apply(color: MyColor.grey2),
                prefixIcon: Icon(Icons.search, color: MyColor.grey1),
              ),
            ),
          );
  }
}

import 'package:cozy_stay/common/widgets/sidebar/menu/sidebar_menu_item.dart';
import 'package:cozy_stay/utils/extensions/size_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/images.dart';

class MySideBar extends StatelessWidget {
  const MySideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            //--------------App Logo----------------//
            Image.asset(MyImageAsset.logo, width: 80),
            //--------------Padding----------------//
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //--------------Home----------------//
                  SideBarMenuItem(
                    iconSize: context.w(20),
                    title: "Home",
                    assetIcon: MyImageAsset.home,
                    index: 0,
                  ),
                  //--------------Booking----------------//
                  SideBarMenuItem(
                    iconSize: context.w(20),
                    badgeCount: 12,
                    index: 1,
                    title: "Booking",
                    assetIcon: MyImageAsset.booking,
                  ),
                  //--------------Save----------------//
                  SideBarMenuItem(
                    iconSize: context.w(20),
                    index: 2,
                    title: "Save",
                    assetIcon: MyImageAsset.save,
                  ),
                  //--------------Profile----------------//
                  SideBarMenuItem(
                    iconSize: context.w(20),
                    index: 3,
                    title: "Profile",
                    assetIcon: MyImageAsset.profile,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

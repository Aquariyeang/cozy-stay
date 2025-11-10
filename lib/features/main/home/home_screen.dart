import 'package:cozy_stay/common/widgets/appbars/main_appbar.dart';
import 'package:cozy_stay/common/widgets/icons/svg_icon.dart';
import 'package:cozy_stay/controllers/ratio_controller.dart';
import 'package:cozy_stay/features/main/home/widgets/province_card.dart';
import 'package:cozy_stay/features/main/home/widgets/room_type_item.dart';
import 'package:cozy_stay/utils/constants/images.dart';
import 'package:cozy_stay/utils/extensions/size_ext.dart';
import 'package:cozy_stay/utils/extensions/text_theme_ext.dart';
import 'package:cozy_stay/utils/helpers/device.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/theme/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final themeController = Get.find<ThemeController>();
  final ratioController = Get.find<RatioController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyMainAppbar(),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: ratioController.scaledWidth(200),
                  height: ratioController.scaledHeight(100),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                      ratioController.scaledRadius(10),
                    ),
                  ),
                ),

                Text("Headline Large", style: context.txt.headlineLarge),
                Text("Headline Medium", style: context.txt.headlineMedium),
                Text("Headline Small", style: context.txt.headlineSmall),
                Text("Title Large", style: context.txt.titleLarge),
                Text("Title Medium", style: context.txt.titleMedium),
                Text("Title Small", style: context.txt.titleSmall),
                Text("Body Large", style: context.txt.bodyLarge),
                Text("Body Medium", style: context.txt.bodyMedium),
                Text("Body Small", style: context.txt.bodySmall),
                Text("Label Large", style: context.txt.labelLarge),
                Text("Label Medium", style: context.txt.labelMedium),
                Text("Label Small", style: context.txt.labelSmall),
                SizedBox(height: 100),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 50,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyRoomTypeItem(
                        title: "VIP Room",
                        icon: MySvgIcon(assetIcon: TemporaryIcon.vipIcon),
                      ),
                      MyRoomTypeItem(
                        title: "Standard Room",
                        icon: MySvgIcon(assetIcon: TemporaryIcon.standard),
                      ),
                      MyRoomTypeItem(
                        title: "Family Room",
                        icon: MySvgIcon(assetIcon: TemporaryIcon.family),
                      ),
                      MyRoomTypeItem(
                        title: "Standard Room",
                        icon: MySvgIcon(assetIcon: TemporaryIcon.standard),
                      ),
                      MyRoomTypeItem(
                        title: "Family Room",
                        icon: MySvgIcon(assetIcon: TemporaryIcon.family),
                      ),
                    ],
                  ),
                ),
                Text("Province"),
                GridView(
                  padding: EdgeInsets.all(12),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: MediaQuery.sizeOf(context).width < 768
                        ? 2
                        : 3,
                  ),
                  children: [
                    MyProvinceCard(),
                    MyProvinceCard(),
                    MyProvinceCard(),
                    MyProvinceCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

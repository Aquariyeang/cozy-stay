import 'package:cozy_stay/common/widgets/appbars/background_color_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/widgets/icons/svg_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/extensions/text_theme_ext.dart';

class MyRoomTypeItem extends StatelessWidget {
  MyRoomTypeItem({
    super.key,
    this.title,
    required this.icon,
    this.iconColor = MyColor.mazarineBlue,
    this.borderColor = MyColor.grey1,
  });
  Color borderColor;
  Color iconColor;
  String? title;
  Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: MyColor.grey1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 12),
          Text(title ?? '', style: context.txt.bodyLarge),
        ],
      ),
    );
  }
}

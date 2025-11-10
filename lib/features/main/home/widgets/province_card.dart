import 'package:cozy_stay/utils/extensions/size_ext.dart';
import 'package:cozy_stay/utils/extensions/text_theme_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class MyProvinceCard extends StatelessWidget {
  const MyProvinceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //-----------------Province Image-----------------//
        Image.asset("assets/images/common_images/btb.jpg", fit: BoxFit.cover),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          //-----------------Black Container-----------------//
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: MyColor.black.withOpacity(0.6),
              borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 7,
                  left: 7,
                  //-----------------Province Name-----------------//
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: MyColor.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(context.r(5)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Battambang",
                      style: context.txt.bodyMedium!.apply(
                        color: MyColor.white,
                        fontWeightDelta: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

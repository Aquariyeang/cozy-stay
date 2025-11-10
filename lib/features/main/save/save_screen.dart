import 'package:cozy_stay/utils/extensions/text_theme_ext.dart';
import 'package:flutter/cupertino.dart';
import '../../../common/layouts/primary_layout.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MyPrimaryLayout(
      title: "My Favorites",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello bro", style: context.txt.titleLarge),
          Container(height: 1000),
        ],
      ),
    );
  }
}

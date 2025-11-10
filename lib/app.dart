import 'package:cozy_stay/routes/app_routes.dart';
import 'package:cozy_stay/routes/routes.dart';
import 'package:cozy_stay/utils/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 914),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        print("Width: ${ScreenUtil().screenWidth}");
        print("Height: ${ScreenUtil().screenHeight}");
        return GetMaterialApp(
          getPages: AppRoute.pages,
          initialRoute: MyRoute.main,
          debugShowCheckedModeBanner: false,
          theme: MyTheme.lightTheme(context),
          darkTheme: MyTheme.darkTheme(context),
        );
      },
    );
  }
}

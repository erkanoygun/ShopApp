import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import 'package:shop_app/views/mainPage/mainPage.dart';

import 'customs/Theme/my_theme.dart';
import 'init/navigation/navigation_route.dart';
import 'init/navigation/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) => AppViewModel(),
          child: MaterialApp(
            title: 'Shop App',
            theme: MyTheme.myTheme1,
            onGenerateRoute: NavigationRoute.instance.generateRoute,
            navigatorKey: NavigationService.instance.navigatorKey,
            home: const MainPage(),
          ),
        );
      },
    );
  }
}
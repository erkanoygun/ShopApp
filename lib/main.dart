import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/home_page_view_model.dart';
import 'package:shop_app/views/DetailPage/detail_page.dart';
import 'package:shop_app/views/HomePage/home_page.dart';
import 'package:shop_app/views/mainPage/mainPage.dart';

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
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.transparent, elevation: 0),
              primarySwatch: Colors.blue,
            ),
            home: MainPage(),
          ),
        );
      },
    );
  }
}

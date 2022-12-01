import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_bottom_navigationbar_item.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar(
      {super.key,
      required this.bottomBarItem,
      this.backgraundColor = Colors.transparent});
  static double bottomBarHeight = ScreenUtil().setHeight(45);
  final List<MyBottomNavigationBarItem> bottomBarItem;
  final Color backgraundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgraundColor,
      height: bottomBarHeight,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomBarItem,
      ),
    );
  }
}
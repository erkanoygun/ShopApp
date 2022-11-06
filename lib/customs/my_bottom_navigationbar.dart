import 'package:flutter/material.dart';
import 'my_bottom_navigationbar_item.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar(
      {super.key,
      required this.bottomBarItem,
      this.bottomBarHeight = 65,
      this.backgraundColor = Colors.transparent});
  final double bottomBarHeight;
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

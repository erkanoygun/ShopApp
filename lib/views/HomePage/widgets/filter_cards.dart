import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FitersCard extends StatelessWidget {
  const FitersCard({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  final double borderRadis = 10.0;
  final double blurRadius = 5.0;
  static final double containerHeight = ScreenUtil().setHeight(40);
  static final double containerWidth = ScreenUtil().setWidth(100);
  static double iconSize = ScreenUtil().setHeight(15);
  static final textSize = ScreenUtil().setSp(15);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(borderRadis)).w,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(0.0, 2.0),
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              size: iconSize,
            ),
            Text(
              text,
              style: TextStyle(fontSize: textSize),
            ),
          ],
        ),
      ),
    );
  }
}

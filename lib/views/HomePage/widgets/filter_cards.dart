import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FitersCards extends StatelessWidget {
  const FitersCards({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  static final double borderRadis = 10.r;
  static final double blurRadius = 5.r;
  static final double containerHeight = 40.h;
  static final double containerWidth = 100.w;
  static final double iconSize = 22.h;
  static final textSize = 18.h;
  static final EdgeInsets paddingAll = const EdgeInsets.all(5.0).r;

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
        padding: paddingAll,
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

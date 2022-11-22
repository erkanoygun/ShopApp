import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constant/style/icon_size.dart';
import '../../../constant/style/widget_size.dart';

class FitersCards extends StatelessWidget {
  const FitersCards({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  final double borderRadis = 10.0;
  final double blurRadius = 5.0;
  static final double containerHeight = WidgetSize.heightSize40;
  static final double containerWidth = WidgetSize.widthSize100;
  static final double iconSize = IconSize.iconSize22;
  static final textSize = WidgetSize.heightSize18;
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

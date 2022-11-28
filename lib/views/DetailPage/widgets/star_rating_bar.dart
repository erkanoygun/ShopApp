import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/app/colors.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import '../../../customs/StarRatingBar/star_rating_bar.dart';

class StarsRatingWidget extends StatelessWidget {
  const StarsRatingWidget(
      {super.key,
      required this.rating,
      this.numberOfIcon = 5,
      required this.iconSize});
  final double rating;
  final int numberOfIcon;
  final double iconSize;
  static final double fontSize = 16.sp;
  static final double boxHeightSize = 55.h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeightSize,
      width: double.infinity,
      child: StarsRatingBar(
        rating: rating,
        fontSize: fontSize,
        iconSize: iconSize,
        numberOfIcon: numberOfIcon,
        color: AppColor.brown.toColor(),
      ),
    );
  }
}

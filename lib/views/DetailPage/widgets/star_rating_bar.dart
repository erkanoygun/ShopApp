import 'package:flutter/material.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';
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
  static final double fontSize = TextSize.textSize16;
  static final double boxHeightSize = WidgetSize.heightSize55;

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
      ),
    );
  }
}

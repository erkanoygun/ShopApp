import 'package:flutter/material.dart';
import '../../../constant/style/text_size.dart';
import '../../../constant/style/widget_size.dart';

class StarsRating extends StatelessWidget {
  const StarsRating(
      {super.key,
      required this.rating,
      this.numberOfIcon = 5,
      this.iconSize = 36});
  final double rating;
  final int? numberOfIcon;
  final double? iconSize;
  static final double fontSize = TextSize.textSize16;
  static final double boxHeightSize = WidgetSize.heightSize55;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeightSize,
      width: double.infinity,
      child: Row(
        children: [
          Row(
            children: buildWidget(
                rating: rating,
                numberOfIcon: numberOfIcon!,
                iconSize: iconSize!),
          ),
          Text(
            " $rating",
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }

  List<Icon> buildWidget(
      {required double rating,
      required int numberOfIcon,
      required double iconSize}) {
    if (rating > numberOfIcon) {
      throw Exception(
          "The 'rating' value cannot be greater than 'numberOfIcon'");
    } else {
      List<Icon> iconWidgets = [];
      if (rating < 0) {
        rating = 0;
      }
      for (int i = 0; i < numberOfIcon; i++) {
        if (rating.floor() >= 1) {
          iconWidgets.add(
            Icon(
              Icons.star,
              size: iconSize,
            ),
          );
          rating--;
        } else if (rating > 0) {
          iconWidgets.add(
            Icon(
              Icons.star_half,
              size: iconSize,
            ),
          );
          rating = 0;
        } else {
          iconWidgets.add(
            Icon(
              Icons.star_border_sharp,
              size: iconSize,
            ),
          );
        }
      }
      return iconWidgets;
    }
  }
}

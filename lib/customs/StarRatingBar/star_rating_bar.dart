import 'package:flutter/material.dart';

class StarsRatingBar extends StatelessWidget {
  const StarsRatingBar(
      {super.key,
      required this.rating,
      this.numberOfIcon = 5,
      this.iconSize = 36.0,
      this.fontSize = 24.0,
      this.color = Colors.black});
  final double rating;
  final int numberOfIcon;
  final double iconSize;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: buildWidget(
              rating: rating, numberOfIcon: numberOfIcon, iconSize: iconSize),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "$rating",
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ],
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
              color: color,
            ),
          );
          rating--;
        } else if (rating > 0) {
          iconWidgets.add(
            Icon(
              Icons.star_half,
              size: iconSize,
              color: color,
            ),
          );
          rating = 0;
        } else {
          iconWidgets.add(
            Icon(
              Icons.star_border_sharp,
              size: iconSize,
              color: color,
            ),
          );
        }
      }
      return iconWidgets;
    }
  }
}

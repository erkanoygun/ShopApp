import 'package:flutter/material.dart';

class StarsRating extends StatelessWidget {
  const StarsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buildWidget(rating: 1.3,numberOfIcon: 5),
    );
  }

  List<Icon> buildWidget({required double rating, int numberOfIcon = 5, double iconSize = 36.0}) {
    if (rating > numberOfIcon) {
      throw Exception("The 'rating' value cannot be greater than 'numberOfIcon'");
    } else {
      List<Icon> iconWidgets = [];
      if (rating < 0) {
        rating = 0;
      }
      for (int i = 0; i < numberOfIcon; i++) {
        if (rating.floor() >= 1) {
          iconWidgets.add(
            Icon(Icons.star,size: iconSize,),
          );
          rating--;
        } else if (rating > 0) {
          iconWidgets.add(
            Icon(Icons.star_half,size: iconSize,),
          );
          rating = 0;
        } else {
          iconWidgets.add(
            Icon(Icons.star_border_sharp,size: iconSize,),
          );
        }
      }
      return iconWidgets;
    }
  }
}

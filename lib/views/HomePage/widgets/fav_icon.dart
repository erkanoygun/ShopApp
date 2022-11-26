import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/view-model/app_view_model.dart';

class MyFavIcon extends StatelessWidget {
  const MyFavIcon({super.key,required this.mystate,required this.productIndex});
  final AppViewModel mystate;
  final int productIndex;
  static final double favIconSize = 25.h;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        mystate.addFavoritesList(mystate.products[productIndex].id);
      },
      child: mystate.favoritesList.contains(mystate.products[productIndex].id)
          ? Icon(
              Icons.favorite,
              size: favIconSize,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border,
              size: favIconSize,
            ),
    );
  }
}

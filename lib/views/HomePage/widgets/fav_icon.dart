import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/extension/color_extensions.dart';
import 'package:shop_app/view-model/app_view_model.dart';

import '../../../core/constant/app/colors.dart';

class MyFavIcon extends StatelessWidget {
  const MyFavIcon(
      {super.key, required this.mystate, required this.productIndex});
  final AppViewModel mystate;
  final int productIndex;
  static final double favIconSize = 15.h;
  static late bool isFavList;
  final double containerAllPAddingValue = 3.5;

  @override
  Widget build(BuildContext context) {
    isFavList =
        mystate.favoritesList.contains(mystate.products[productIndex].id);
    return GestureDetector(
      onTap: () {
        mystate.addFavoritesList(mystate.products[productIndex].id);
        isFavList =
            mystate.favoritesList.contains(mystate.products[productIndex].id);
      },
      child: Container(
        padding: EdgeInsets.all(containerAllPAddingValue),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          isFavList ? Icons.favorite : Icons.favorite_border,
          size: favIconSize,
          color: isFavList ? AppColor.red.toColor() : AppColor.black.toColor(),
        ),
      ),
    );
  }
}

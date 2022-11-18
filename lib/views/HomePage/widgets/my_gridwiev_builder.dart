import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/text_constant.dart';

class MyGridWievBuilder extends StatelessWidget {
  MyGridWievBuilder({super.key});
  final double gridWievCardSize = ScreenUtil().setHeight(220);
  final double crossAxisSpacing = ScreenUtil().setHeight(40);
  static final productNameTextSize = ScreenUtil().setSp(12);
  static final productPriceTextSize = ScreenUtil().setSp(16);
  final double productImageWidth = ScreenUtil().setHeight(140);
  final double productImageHeight = ScreenUtil().setHeight(140);
  final double favIconSize = ScreenUtil().setHeight(25);
  final double addToCartButtonWidth = ScreenUtil().setHeight(120);
  final double addToCartButtonHeight = ScreenUtil().setHeight(25);
  static List imageNames = ['armchair1.png', 'armchair2.png'];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: gridWievCardSize,
        childAspectRatio: 1.0,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: 10.0,
      ),
      itemCount: 8,
      itemBuilder: (BuildContext ctx, index) {
        return Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: productImageWidth,
                    height: productImageHeight,
                    child: Image.asset(
                        "assets/images/${imageNames[Random().nextInt(imageNames.length)]}"),
                  ),
                  Text(
                    TextConstant.productName,
                    style: TextStyle(fontSize: productNameTextSize),
                  ),
                  Text(
                    TextConstant.productPrice,
                    style: TextStyle(
                        fontSize: productPriceTextSize,
                        fontWeight: FontWeight.bold),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(addToCartButtonWidth, addToCartButtonHeight),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: const Text(TextConstant.addCartButtonText),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                size: favIconSize,
              ),
            ),
          ],
        );
      },
    );
  }
}

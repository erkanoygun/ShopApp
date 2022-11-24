import 'package:flutter/material.dart';

import '../../../constant/style/widget_size.dart';
import '../../../view-model/home_page_view_model.dart';

class MyProductImage extends StatelessWidget {
  const MyProductImage({super.key,required this.mystate, required this.index});
  static final double productImageWidth = WidgetSize.heightSize140;
  static final double productImageHeight = WidgetSize.heightSize140;
  final AppViewModel mystate;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: productImageWidth,
      height: productImageHeight,
      child: Image.asset(mystate.products[index].imgPath),
    );
  }
}

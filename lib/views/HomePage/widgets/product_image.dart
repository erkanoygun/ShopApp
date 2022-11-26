import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../view-model/app_view_model.dart';

class MyProductImage extends StatelessWidget {
  const MyProductImage({super.key,required this.mystate, required this.index});
  static final double productImageWidth = 140.w;
  static final double productImageHeight = 140.h;
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

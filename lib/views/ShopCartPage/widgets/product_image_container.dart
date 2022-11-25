import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(0.0, 0.75))
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: ScreenUtil().setWidth(160),
        height: ScreenUtil().setHeight(160),
        child: SizedBox(
          width: ScreenUtil().setWidth(160),
          height: ScreenUtil().setHeight(160),
          child: Image.asset("assets/images/armchair1.png"),
        ),
      ),
    );
  }
}

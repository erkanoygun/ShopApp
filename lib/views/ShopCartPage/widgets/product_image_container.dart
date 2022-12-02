import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({super.key,required this.imgPath});
  final String imgPath;
  final double containerRadius = 16.0;
  final double containerBlurRadius = 5.0;
  final EdgeInsets marginSymmetric = const EdgeInsets.symmetric(horizontal: 16);
  static final double containerAndSizedBoxHght = 160.h;
  static final double containerAndSizedBoxWdh = 160.w;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(containerRadius),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: containerBlurRadius,
              offset: const Offset(0.0, 0.75),
            )
          ],
        ),
        margin: marginSymmetric,
        width: containerAndSizedBoxWdh,
        height: containerAndSizedBoxHght,
        child: SizedBox(
          width: containerAndSizedBoxWdh,
          height: containerAndSizedBoxHght,
          child: Image.asset(imgPath),
        ),
      ),
    );
  }
}

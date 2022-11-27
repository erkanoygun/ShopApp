import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key,required this.description});
  final String description;
  static final double sizedBoxHeight = 55.h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizedBoxHeight,
      width: double.infinity,
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

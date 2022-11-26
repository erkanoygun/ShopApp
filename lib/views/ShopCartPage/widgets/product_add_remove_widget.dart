import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductAddAndRemoveWidget extends StatelessWidget {
  const ProductAddAndRemoveWidget({super.key});
  static final double sizedBoxWeight = 85.w;
  static final double sizedBoxHeight = 28.h;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text("9999 ₺"),
        Stack(
          children: [
            SizedBox(
              width: sizedBoxWeight,
              height: sizedBoxHeight,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    width: 65.w,
                    height: 18.h,
                    child: Text("1"),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 28.w,
                      height: 28.h,
                      child: FloatingActionButton(
                        heroTag: "demoTag1",
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 28.w,
                      height: 28.h,
                      child: FloatingActionButton(
                        heroTag: "demoTag2",
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}




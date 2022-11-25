import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_details.dart';

class ProductInformationWidget extends StatelessWidget {
  const ProductInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      color: Colors.green,
      width: ScreenUtil().setWidth(280),
      height: ScreenUtil().setHeight(120),
      child: SizedBox(
        width: ScreenUtil().setWidth(175),
        height: ScreenUtil().setHeight(120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Yellow Arm Chair",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: ProductDetailsWidget(),
            ),
            Expanded(
              flex: 6,
              child: Row(),
            ),
          ],
        ),
      ),
    );
  }
}

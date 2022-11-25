import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_image_container.dart';
import 'package:shop_app/views/ShopCartPage/widgets/product_information_container.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            width: double.infinity,
            height: ScreenUtil().setHeight(170),
            child: Stack(
              alignment: Alignment.centerRight,
              children: const [
                ProductInformationWidget(),
                ProductImageWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}

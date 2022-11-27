import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/ShopCartPage/widgets/list_view_builder.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});
  static EdgeInsets columnPaddingTop = const EdgeInsets.only(top: 18).r;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: columnPaddingTop,
        child: Column(
          children: const [
            Expanded(
              flex: 6,
              child: MyListViewBuilder(),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

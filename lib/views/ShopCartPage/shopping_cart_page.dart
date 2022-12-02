import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/core/constant/app/app_texts.dart';
import 'package:shop_app/view-model/app_view_model.dart';
import 'package:shop_app/views/ShopCartPage/widgets/empty_list_page.dart';
import 'package:shop_app/views/ShopCartPage/widgets/list_view_builder.dart';
import 'package:shop_app/views/ShopCartPage/widgets/total_price_and_button_widget.dart';
import '../../customs/customAppBar/my_app_bar.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});
  static EdgeInsets columnPaddingTop = const EdgeInsets.only(top: 2).r;

  @override
  Widget build(BuildContext context) {
    return Selector<AppViewModel, int>(
      selector: (_, mystate) => mystate.cartList.length,
      builder: (_, mystate, __) {
        return mystate != 0
            ? Scaffold(
                appBar: const MyAppBar(title: AppText.cartPageTitle),
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
                        child: TotalPriceAndButtonContainer(),
                      ),
                    ],
                  ),
                ),
              )
            : const EmptyListPage();
      },
    );
  }
}

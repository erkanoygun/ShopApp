import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/view-model/home_page_view_model.dart';
import 'package:shop_app/views/HomePage/widgets/my_app_bar.dart';
import 'package:shop_app/views/HomePage/widgets/my_gridwiev_builder.dart';
import '../../constant/app/texts.dart';
import '../../constant/style/text_size.dart';
import '../../customs/my_bottom_navigationbar.dart';
import '../../customs/my_bottom_navigationbar_item.dart';
import 'widgets/filter_cards.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final double bottomBarItemIconSize = ScreenUtil().setHeight(25);
  final double bottomBarHeight = ScreenUtil().setHeight(55);
  final double bottomBarItemTextSize = TextSize.textSize12;
  // late List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        bottomBarHeight: bottomBarHeight,
        bottomBarItem: [
          bottomNavigationBarItem(
              isSelect: true, icon: Icons.home, text: AppText.bottomBarItem1),
          bottomNavigationBarItem(
              isSelect: false,
              icon: Icons.category_rounded,
              text: AppText.bottomBarItem2),
          bottomNavigationBarItem(
              isSelect: false,
              icon: Icons.favorite,
              text: AppText.bottomBarItem3),
          bottomNavigationBarItem(
              isSelect: false,
              icon: Icons.person,
              text: AppText.bottomBarItem4),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: MyAppBar(),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                FitersCard(
                  icon: Icons.sort,
                  text: AppText.filtersCardSort,
                ),
                FitersCard(
                  icon: Icons.filter_alt_sharp,
                  text: AppText.filtersCardFilter,
                ),
                FitersCard(
                  icon: Icons.search,
                  text: AppText.filtersCardSearch,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15).r,
              child: MyGridWievBuilder(),
            ),
          ),
        ],
      ),
    );
  }

  MyBottomNavigationBarItem bottomNavigationBarItem(
      {required bool isSelect, required String text, required IconData icon}) {
    return MyBottomNavigationBarItem(
      iconSize: bottomBarItemIconSize,
      textSize: bottomBarItemTextSize,
      isSelect: isSelect,
      text: text,
      icon: icon,
    );
  }
}

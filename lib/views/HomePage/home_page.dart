import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/views/HomePage/widgets/my_app_bar.dart';
import '../../customs/my_bottom_navigationbar.dart';
import '../../customs/my_bottom_navigationbar_item.dart';
import '../../widgets/filter_cards.dart';
import 'constant/text_constant.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final double gridWievCardSize = ScreenUtil().setHeight(200);
  final double crossAxisSpacing = ScreenUtil().setHeight(40);
  final double bottomBarItemIconSize = ScreenUtil().setHeight(25);
  final double bottomBarHeight = ScreenUtil().setHeight(55);
  final double bottomBarItemTextSize = ScreenUtil().setSp(13);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        bottomBarHeight: bottomBarHeight,
        bottomBarItem: [
          bottomNavigationBarItem(
              isSelect: true,
              icon: Icons.home,
              text: TextConstant.bottomBarItem1),
          bottomNavigationBarItem(
              isSelect: false,
              icon: Icons.category_rounded,
              text: TextConstant.bottomBarItem2),
          bottomNavigationBarItem(
              isSelect: false,
              icon: Icons.favorite,
              text: TextConstant.bottomBarItem3),
          bottomNavigationBarItem(
              isSelect: false,
              icon: Icons.person,
              text: TextConstant.bottomBarItem4),
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
                  text: "Sort",
                ),
                FitersCard(
                  icon: Icons.filter_alt_sharp,
                  text: "Filter",
                ),
                FitersCard(
                  icon: Icons.search,
                  text: "Search",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15).r,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: gridWievCardSize,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: crossAxisSpacing,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Text("test"),
                  );
                },
              ),
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

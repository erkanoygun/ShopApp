import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../customs/my_bottom_navigationbar.dart';
import '../../customs/my_bottom_navigationbar_item.dart';
import '../../widgets/filter_cards.dart';
import 'constant/text_constant.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final double gridWievCardSize = ScreenUtil().setHeight(200);
  final double crossAxisSpacing = ScreenUtil().setHeight(40);
  final double bottomBarItemIconSize = ScreenUtil().setHeight(25);
  final double bottomBarHeight = ScreenUtil().setHeight(60);
  final double bottomBarItemTextSize = ScreenUtil().setSp(13);
  

  @override
  Widget build(BuildContext context) {
    // 56 App bar height
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        bottomBarHeight: bottomBarHeight,
        bottomBarItem: [
          MyBottomNavigationBarItem(
            iconSize: bottomBarItemIconSize,
            textSize: bottomBarItemTextSize,
            isSelect: true,
            text: TextConstant.bottomBarItem1,
            icon: Icons.home,
          ),
          MyBottomNavigationBarItem(
            iconSize: bottomBarItemIconSize,
            textSize: bottomBarItemTextSize,
            isSelect: false,
            text: TextConstant.bottomBarItem2,
            icon: Icons.category_rounded,
          ),
          MyBottomNavigationBarItem(
            iconSize: bottomBarItemIconSize,
            textSize: bottomBarItemTextSize,
            isSelect: false,
            text: TextConstant.bottomBarItem3,
            icon: Icons.favorite,
          ),
          MyBottomNavigationBarItem(
            iconSize: bottomBarItemIconSize,
            textSize: bottomBarItemTextSize,
            isSelect: false,
            text: TextConstant.bottomBarItem4,
            icon: Icons.person,
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text(TextConstant.appBarText),
      ),
      body: Column(
        children: [
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
            flex: 5,
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
}



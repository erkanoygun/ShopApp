import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/views/CategoriesPage/categories_page.dart';
import 'package:shop_app/views/FavoritesPage/favorites_page.dart';
import 'package:shop_app/views/HomePage/home_page.dart';
import '../../constant/app/texts.dart';
import '../../constant/style/icon_size.dart';
import '../../constant/style/text_size.dart';
import '../../constant/style/widget_size.dart';
import '../../customs/MyBottomNavigationBar/my_bottom_navigationbar.dart';
import '../../customs/MyBottomNavigationBar/my_bottom_navigationbar_item.dart';
import '../../view-model/home_page_view_model.dart';
import '../profilePage/profile_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final double bottomBarItemIconSize = IconSize.iconSize25;
  final double bottomBarHeight = WidgetSize.heightSize55;
  final double bottomBarItemTextSize = TextSize.textSize12;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Consumer<AppViewModel>(
        builder: (context, mystate, child) {
          return MyBottomNavigationBar(
            bottomBarItem: [
              bottomNavBarItems(
                icon: Icons.home,
                index: 0,
                title: AppText.bottomBarItem1,
                selectedIndex: mystate.selectedIndex,
              ),
              bottomNavBarItems(
                icon: Icons.category_rounded,
                index: 1,
                title: AppText.bottomBarItem2,
                selectedIndex: mystate.selectedIndex,
              ),
              bottomNavBarItems(
                icon: Icons.favorite,
                index: 2,
                title: AppText.bottomBarItem3,
                selectedIndex: mystate.selectedIndex,
              ),
              bottomNavBarItems(
                icon: Icons.person,
                index: 3,
                title: AppText.bottomBarItem4,
                selectedIndex: mystate.selectedIndex,
              ),
            ],
          );
        },
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          CategoriesPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
    );
  }

  MyBottomNavigationBarItem bottomNavBarItems({
    required int index,
    required String title,
    required IconData icon,
    required int selectedIndex,
  }) {
    return MyBottomNavigationBarItem(
      icon: icon,
      index: index,
      text: title,
      iconSize: bottomBarItemIconSize,
      textSize: bottomBarItemTextSize,
      selectedIndex: selectedIndex,
      pageController: pageController,
    );
  }
}
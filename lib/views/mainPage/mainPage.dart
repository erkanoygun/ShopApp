import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/views/CategoriesPage/categories_page.dart';
import 'package:shop_app/views/FavoritesPage/favorites_page.dart';
import 'package:shop_app/views/HomePage/home_page.dart';
import '../../core/constant/app/app_texts.dart';
import '../../customs/MyBottomNavigationBar/my_bottom_navigationbar.dart';
import '../../customs/MyBottomNavigationBar/my_bottom_navigationbar_item.dart';
import '../../view-model/app_view_model.dart';
import '../profilePage/profile_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static final double bottomBarItemIconSize = 25.h;
  static final double bottomBarHeight = 55.h;
  static final double bottomBarItemTextSize = 12.sp;
  static final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Provider.of<AppViewModel>(context, listen: false).getProducts();
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
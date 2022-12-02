import 'package:flutter/material.dart';
import 'package:shop_app/model/product_model.dart';
import 'package:shop_app/views/mainPage/mainPage.dart';
import '../../core/constant/navigation/navigation_constant.dart';
import '../../views/DetailPage/detail_page.dart';
import '../../views/ShopCartPage/shopping_cart_page.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstant.MainPage:
        return normalPageRoute(const MainPage());
      case NavigationConstant.ShopingCartPage:
        return normalPageRoute(const ShoppingCartPage());
      case NavigationConstant.ProductDetailPage:
        return normalPageRoute(
          DetailPage(product: settings.arguments as Product),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text("Page Not Fount")),
          ),
        );
    }
  }

  MaterialPageRoute normalPageRoute(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:shop_app/init/navigation/INavigationService.dart';

class NavigationService implements INavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Future<void> navigateToPage({required String path, Object? data}) async {
    await navigatorKey.currentState?.pushNamed(path, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({required String path, Object? data}) async {
    await navigatorKey.currentState?.pushNamedAndRemoveUntil(
        path, (Route<dynamic> route) => false,
        arguments: data);
  }
}

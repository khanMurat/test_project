import 'package:flutter/widgets.dart';

class NavigationService {
  NavigationService._init();
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  void navigateToPage(String path, {Object? data}) {
    navigatorKey.currentState!.pushNamed(path, arguments: data);
  }

  void navigateToPop({Object? data}) {
    navigatorKey.currentState!.pop(data);
  }
}

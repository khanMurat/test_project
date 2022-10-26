import 'package:flutter/material.dart';
import 'package:test_project/core/init/navigation/navigation_constant.dart';
import 'package:test_project/features/detail/detail_view.dart';
import 'package:test_project/features/home/home_view.dart';
import 'package:test_project/models/users/user_model.dart';

class NavigationManager {
  NavigationManager._init();

  static final NavigationManager _instance = NavigationManager._init();
  static NavigationManager get instance => _instance;

  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstant.home:
        return pageRoute(NavigationConstant.home, const HomeView());
      case NavigationConstant.detail:
        return pageRoute(
          NavigationConstant.detail,
          DetailView(
            userModel: settings.arguments as UserModel,
          ),
        );
    }
    return null;
  }

  MaterialPageRoute pageRoute(String routeName, Widget view, {Object? data}) {
    return MaterialPageRoute(
      builder: ((context) => view),
      settings: RouteSettings(name: routeName, arguments: data),
    );
  }
}

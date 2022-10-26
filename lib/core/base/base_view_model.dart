import 'package:flutter/material.dart';
import 'package:test_project/core/init/navigation/navgation_service.dart';

abstract class BaseViewModel extends ChangeNotifier {
  BuildContext? context;

  NavigationService navigationService = NavigationService.instance;

  void setContext(BuildContext context);
}

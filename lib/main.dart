import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/core/init/navigation/navgation_service.dart';
import 'package:test_project/core/init/navigation/navigation_manager.dart';
import 'package:test_project/features/home/home_view.dart';
import 'package:test_project/features/home/home_view_model.dart';
import 'package:test_project/ui/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: NavigationService.instance.navigatorKey,
          onGenerateRoute: NavigationManager.instance.generateRoute,
          theme: CustomTheme.instance.customTheme,
          home: const HomeView(),
        );
      },
    );
  }
}

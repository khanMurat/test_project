import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/core/constants/app_size_constant.dart';
import 'package:test_project/core/extension/context_extension.dart';
import 'package:test_project/core/init/navigation/navgation_service.dart';
import 'package:test_project/core/init/navigation/navigation_constant.dart';
import 'package:test_project/features/home/home_view_model.dart';
import 'package:test_project/ui/components/home/home_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _viewModel = HomeViewModel.instance;

  @override
  void initState() {
    _viewModel.getUserList();
    _viewModel.context;
    super.initState();
  }

  final String appBarTitle = "Users";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Consumer<HomeViewModel>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.separated(
              itemBuilder: ((context, index) {
                return SizedBox(
                  height: context.perHeight(Sizes.p38),
                  child: HomeWidget(
                    userModel: value.userList[index],
                    onPressed: (() {
                      NavigationService.instance.navigateToPage(
                        NavigationConstant.detail,
                        data: value.userList[index],
                      );
                    }),
                  ),
                );
              }),
              separatorBuilder: ((context, index) {
                return const Divider(
                  height: Sizes.p4,
                );
              }),
              itemCount: value.userList.length);
        },
      ),
    );
  }
}

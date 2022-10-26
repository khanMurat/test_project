import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_size_constant.dart';
import 'package:test_project/core/extension/context_extension.dart';
import 'package:test_project/features/detail/detail_view_model.dart';
import 'package:test_project/ui/components/detail/detail_widget.dart';
import '../../models/users/user_model.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key, required this.userModel}) : super(key: key);

  final UserModel userModel;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late final DetailViewModel viewModel;
  final String _appBarTitle = "Detail";

  @override
  void initState() {
    viewModel = DetailViewModel();
    viewModel.context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitle)),
      body: Center(
        child: SizedBox(
          height: context.perHeight(Sizes.p65),
          child: DetailWidget(
            userModel: widget.userModel,
          ),
        ),
      ),
    );
  }
}

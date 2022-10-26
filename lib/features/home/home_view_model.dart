import 'dart:io';
import 'package:flutter/material.dart';
import 'package:test_project/core/base/base_view_model.dart';
import 'package:test_project/features/home/home_service.dart';
import 'package:test_project/models/users/user_model.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel._init();
  static final HomeViewModel _instance = HomeViewModel._init();
  static HomeViewModel get instance => _instance;

  final _service = HomeService();

  @override
  void setContext(BuildContext context) => this.context = context;

  List<UserModel> userList = [];

  bool isLoading = true;

  void getUserList() async {
    _setTrue();

    try {
      userList = await _service.getUserInfoList();
    } on HttpException catch (e) {
      ScaffoldMessenger.of(context!)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }

    _setFalse();
  }

  void _setTrue() {
    isLoading = true;
    notifyListeners();
  }

  void _setFalse() {
    isLoading = false;
    notifyListeners();
  }
}

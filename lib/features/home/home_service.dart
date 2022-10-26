import 'package:test_project/core/init/network/network_manager.dart';
import 'package:test_project/models/users/user_model.dart';

class HomeService {
  final _networkManager = NetworkManager.instance;

  Future<List<UserModel>> getUserInfoList() async {
    try {
      final data = await _networkManager.getData();

      final list = List<Map<String, dynamic>>.from(data);

      final userList = list.map(UserModel.fromMap).toList();

      return userList;
    } on Exception {
      rethrow;
    }
  }
}

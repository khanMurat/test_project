import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:test_project/core/constants/api_constant.dart';

class NetworkManager {
  NetworkManager._init();
  static final NetworkManager _instance = NetworkManager._init();
  static NetworkManager get instance => _instance;

  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(ApiConstant.baseURL));
    final data = convert.jsonDecode(response.body);

    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception("Failed to load data");
    }
  }
}

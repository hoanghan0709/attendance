import 'package:dio/dio.dart';
import 'dart:convert' show jsonDecode;
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserRepository {
  static String mainUrl = "https://api-dev2021.midesk.vn/api/v3";
  var loginUrl = '$mainUrl/auth/login';

  final FlutterSecureStorage storage = FlutterSecureStorage();
  final Dio _dio = Dio();

  Future<bool> hasToken() async {
    var value = await storage.read(key: 'token');
    if (value != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> persistToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<void> deleteToken() async {
    storage.delete(key: 'token');
    storage.deleteAll();
  }
  Future<void> getToken()  async {
    storage.read(key: 'token');
  }

  Future<String> login(String username, String password) async {
    Response response = await _dio.post(loginUrl, data: {
      "email": username,
      "password": password,
    });
    Map<String, dynamic> jsonInput = jsonDecode(response.toString());
    print("token nek" + jsonInput['data']['access_token'].toString());
    return jsonInput['data']['access_token'];
  }
}

import 'package:dio/dio.dart';

String baseUrl='https://api-dev2021.midesk.vn/';
Dio dio = Dio(BaseOptions(
    headers: {
      'Accept': 'application/json',
    },
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000));
 
void setToken(String token) {
  if (dio.options.headers.containsKey('token')) {
    dio.options.headers.update('token', (value) => value = token);
  } else {
    dio.options.headers.addAll({'token': token});
  }
}
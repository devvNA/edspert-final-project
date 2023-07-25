import 'package:dio/dio.dart';

import 'types.dart';

class Request {
  final Dio _dio = Dio();

  /// Fungsi ini digunakan untuk melakukan GET request
  Future<Response> get(String path, {JSON? queryParameters}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }
  // Future<Response> get(String path,
  //     {JSON? queryParameters, required bool requiresAuthToken}) async {
  //   return await _dio.get(path, queryParameters: queryParameters);
  // }

  /// Fungsi ini digunakan untuk melakukan POST request
  Future<Response> post(String path,
      {Object? data,
      JSON? queryParameters,
      required bool requiresAuthToken}) async {
    return await _dio.post(path, queryParameters: queryParameters, data: data);
  }

  /// Fungsi ini digunakan untuk melakukan DELETE request
  Future<Response> delete(String path,
      {Object? data, required bool requiresAuthToken}) async {
    return await _dio.delete(path, data: data);
  }

  /// Fungsi ini digunakan untuk melakukan PUT request
  Future<Response> put(String path,
      {Object? data,
      required bool requiresAuthToken,
      JSON? queryParameters}) async {
    return await _dio.put(path, data: data, queryParameters: queryParameters);
  }
}

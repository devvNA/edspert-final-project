import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_endpoints.dart';
import 'types.dart';

class Request {
  late Dio _dio = Dio();

  Request() {
    _initApiClient();
  }

  void _initApiClient() {
    _dio = Dio(BaseOptions(
      headers: {
        "x-api-key": apiKey,
        HttpHeaders.contentTypeHeader: "application/json",
      },
      responseType: ResponseType.json,
    ));
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));

/*     BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "x-api-key": apiKey,
        HttpHeaders.contentTypeHeader: "application/json",
      },
      responseType: ResponseType.json,
    ); */
  }

  /// GET request
  Future<Response> get(String path, {JSON? queryParameters}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }

/*   Future<Response> get(String path,
      {JSON? queryParameters, required bool requiresAuthToken}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }
 */

  /// POST request
  Future<Response> post(String path,
      {Object? body, JSON? queryParameters}) async {
    return await _dio.post(path, queryParameters: queryParameters, data: body);
  }

  /// DELETE request
  Future<Response> delete(String path, {Object? body}) async {
    return await _dio.delete(path, data: body);
  }

  /// PUT request
  Future<Response> put(String path,
      {Object? body, JSON? queryParameters}) async {
    return await _dio.put(path, data: body, queryParameters: queryParameters);
  }
}

// ignore_for_file: unused_field, avoid_print

import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:getx_news_app/service/http_service.dart';

const BASE_URL = "https://newsapi.org/";
const API_KEY = "abc1d645d63847138f47eca937e8862c";

class HttpServiceImpl implements HttpService {
  // 2 overrides from bulb

  late Dio _dio;

  @override
  Future<dynamic> getRequest(String url) async {
    // TODO: implement getRequest

    Response response; // response Instance

    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      // Exception replaced by DioError

      print(e.message);

      throw Exception(e.message); // We get the Caller Method
    }
    return response;
  }

  // Interceptor helps u montior the request u r making
  InitializeInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(
        onError: (e, handler) => print(e.message),
        onRequest: (request, handler) =>
            print(" ${request.method} | ${request.path}"),
        onResponse: ((response, handler) => print(
            "${response.statusCode} ${response.statusMessage} ${response.data}"))));
  }

  @override
  void init() {
    _dio =
        Dio(BaseOptions(baseUrl: BASE_URL, // req for configuration of Dio Pkg
            headers: {"Authorization": "Bearer $API_KEY"}));

    InitializeInterceptor();
  }
}

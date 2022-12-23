import 'package:dio/dio.dart';
import 'package:get/get.dart';

abstract class HttpService {
  
  void init();

  Future<dynamic> getRequest(String url);
}

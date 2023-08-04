// this is the wrapper that handles everything related to api service
import 'package:dio/dio.dart';

class ApiService {
final _baseUrl = 'https://www.googleapis.com/books/v1/';
final Dio _dio;

ApiService(this._dio);

Future<Map<String, dynamic>> getRequest({required String endpoint}) async{
  var response = await _dio.get('$_baseUrl$endpoint');
  return response.data;
}
}
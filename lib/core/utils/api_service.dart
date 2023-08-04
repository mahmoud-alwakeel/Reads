// this is the wrapper that handles everything related to api service
import 'package:dio/dio.dart';

class ApiService {
final _baseUrl = 'https://www.googleapis.com/books/v1/';
final Dio dio;

ApiService(this.dio);

Future<Map<String, dynamic>> getRequest({required String endpoint}) async{
  var response = await dio.get('$_baseUrl$endpoint');
  return response.data;
}
}
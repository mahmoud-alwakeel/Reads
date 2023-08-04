import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionError:
        return ServerFailure('Connection time out with server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive time out with server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('send time out with server');

      case DioExceptionType.badCertificate:

        return ServerFailure('Connection time out with server');

      case DioExceptionType.cancel:
        return ServerFailure('request was canceled');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')) {
          return ServerFailure('No Network connection');
        }
        return ServerFailure('unexpected error ');
      default: return ServerFailure('unexpected error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (response == 400 || response == 401 || response == 403) {
      return ServerFailure(response['error']['message']);
    } else if(response == 404){
      return ServerFailure('NOT FOUND');
    }else if(response == 500){
      return ServerFailure('server failure, please try again');
    }else {
      return ServerFailure('Ummm, There is an error');
    }
  }
}

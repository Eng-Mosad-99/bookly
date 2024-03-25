import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with Api service');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with Api service');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with Api service');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with Api service');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request Api service was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error with Api service');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('Internet Connection');
        }
        return ServerFailure('UnExpected Error please try again!');
      default:
        return ServerFailure('Opps, There is an error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try again later');
    } else {
      return ServerFailure('Opps, There is an error');
    }
  }
}

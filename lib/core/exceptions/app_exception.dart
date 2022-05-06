import 'package:dio/dio.dart';

class AppException implements Exception {
  final String message;

  AppException({this.message = 'Something went wrong!'});

  static AppException fromDioError(DioError e) {
    switch (e.type) {
      case DioErrorType.other:
        if (e.message.contains('SocketException')) {
          return AppException(
              message:
                  'Weak Connection! Please check you network and try again.');
        }
        return AppException(message: 'Something went wrong!');
      case DioErrorType.response:
        final responseMsg = e.message;
        return AppException(
          message: responseMsg.toString(),
        );
      default:
        return AppException(message: 'Something went wrong!.');
    }
  }
}

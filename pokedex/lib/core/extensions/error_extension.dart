import 'package:dio/dio.dart';
import 'package:pokedex/core/exceptions/app_exception.dart';

extension ServerError on AppException {
  static AppException fromDioError(DioError e) {
    switch (e.type) {
      case DioErrorType.other:
        return AppException(message: 'Something went wrong!');
      case DioErrorType.response:
        final responseMsg = e.message;
        return AppException(
          message: responseMsg.toString(),
        );
      default:
        return AppException(message: 'Something went wrong/=.');
    }
  }
}

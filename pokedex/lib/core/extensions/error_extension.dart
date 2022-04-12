import 'package:dio/dio.dart';
import 'package:pokedex/core/exceptions/server_exception.dart';

extension ServerError on ServerException {
  static ServerException fromDioError(DioError e) {
    return ServerException(400, '');
  }
}

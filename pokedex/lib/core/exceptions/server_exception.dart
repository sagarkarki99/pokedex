class ServerException implements Exception {
  final int statusCode;
  final String errorMessage;

  ServerException(this.statusCode, this.errorMessage);
}

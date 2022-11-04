enum ApiError {
  unauthorised,
  badResponse,
  notFound,
  unknown;

  String get errorMessage {
    switch (this) {
      case ApiError.unauthorised:
        return "Unauthorised";
      case ApiError.badResponse:
        return "Bad Response";
      case ApiError.notFound:
        return "Not Found";
      case ApiError.unknown:
        return "Unknown";
    }
  }
}

class ApiException implements Exception {
  ApiException(this.error);

  final ApiError error;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiException && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;
  @override
  String toString() {
    return 'ApiException: ${error.errorMessage}';
  }
}

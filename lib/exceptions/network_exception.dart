class NetworkException implements Exception {
  NetworkException(this.error);

  final String error;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NetworkException && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;
  @override
  String toString() {
    return 'NetworkException: $error';
  }
}
